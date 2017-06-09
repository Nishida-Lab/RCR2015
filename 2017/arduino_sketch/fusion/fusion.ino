#include<Wire.h>
#include<VL6180X.h>
#include<L3GD20.h>
#include<./ACCEL.h>

VL6180X vl6180x_NW;
VL6180X vl6180x_N;
VL6180X vl6180x_NE;
L3GD20 l3gd20;

int tim = 0;
double new_data[3] = {0,0,0};
double last_answer[3] = {0,0,0};
double answer[3] = {0,0,0};
unsigned long new_time = 0, last_time = 0, dt = 0;
double pos_x,pos_y,pos_z;

int readSensor(int sensor){
  int answer = 0;
  switch(sensor){
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
    return readAnalog(sensor); //read PSD sensor

    //get Position
  case 7:
    answer = pos_x;
  case 8:
    answer = pos_y;
  case 9:
    answer = pos_z;
    //get position
  case 10:
    answer = vl6180x_NW.readRangeSingleMillimeters();
    if(vl6180x_NW.timeoutOccurred()) answer = -1; break;
  case 11:
    answer = vl6180x_N.readRangeSingleMillimeters();
    if(vl6180x_N.timeoutOccurred()) answer = -1; break;
  case 12:
    answer = vl6180x_NE.readRangeSingleMillimeters();
    if(vl6180x_NE.timeoutOccurred()) answer = -1; break;
  case 13:
    l3gd20.read();
    answer = (int) l3gd20.data.x; break;
  case 14:
    l3gd20.read();
    answer = (int) l3gd20.data.y; break;
  case 15:
    l3gd20.read();
    answer = (int) l3gd20.data.z; break;
  }

  return answer;
}


unsigned double distance(){


}


void setup(){
  Serial.begin(9600);
  Wire.begin();
 
  //pin mode setup----------------------------------------------------- 
  pinMode( 5, OUTPUT);
  pinMode( 6, OUTPUT);
  pinMode( 7, OUTPUT); //SRS_GPIO0 setup
  pinMode( 8, OUTPUT); 
  pinMode( 9, OUTPUT);
  pinMode(10, OUTPUT); 
  pinMode(11, OUTPUT); //Multiplexer setup

  //short-range sensor setup--------------------------------------------
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
 
  digitalWrite(5, HIGH);
  vl6180x_NW.init();
  vl6180x_NW.configureDefault();
  vl6180x_NW.setAddress(98); //SLAVE_ADDRESS 98
  vl6180x_NW.setTimeout(500);
   
  digitalWrite(6, HIGH);
  vl6180x_N.init();
  vl6180x_N.configureDefault(); 
  vl6180x_N.setAddress(99);  //SLAVE_ADDRESS 99
  vl6180x_N.setTimeout(500);
 
  digitalWrite(7, HIGH);
  vl6180x_NE.init();
  vl6180x_NE.configureDefault(); 
  vl6180x_NE.setAddress(100);  //SLAVE_ADDRESS 100
  vl6180x_NE.setTimeout(500);
 
  //gyro sensor setup------------------------------------------------
  if(!l3gd20.begin(l3gd20.L3GD20_RANGE_500DPS)){ //SLAVE_ADDRESS 0x6A (106d)
    Serial.print(-1);
    while(true);
  }
}


void loop(){
  int num[3] = {0,1,2};
  int claim = -1;
  double rc_param = 0.85;


  new_data[0] = readAnalog(7);
  answer[0] = rc_param * last_answer[0] + (1-rc_param) * new_data[0]; 
  last_answer[0] = answer[0];

  new_data[1] = readAnalog(8);
  answer[1] = rc_param * last_answer[1] + (1-rc_param) * new_data[1]; 
  last_answer[1] = answer[1];

  new_data[2] = readAnalog(9);
  answer[2] = rc_param * last_answer[2] + (1-rc_param) * new_data[2]; 
  last_answer[2] = answer[2];

  getAcc(num[tim],answer[0],answer[1],answer[2]);
  tim++;

  vel_0.time = acc_0.time;
  vel_0.data_x = getVelocity(acc_0.time, acc_0.data_x, acc_1.time, acc_1.data_x, acc_2.time, acc_2.data_x);
  vel_0.data_y = getVelocity(acc_0.time, acc_0.data_y, acc_1.time, acc_1.data_y, acc_2.time, acc_2.data_y);
  vel_0.data_z = getVelocity(acc_0.time, acc_0.data_z, acc_1.time, acc_1.data_z, acc_2.time, acc_2.data_z);

  vel_1.time = acc_1.time;
  vel_1.data_x = getVelocity(acc_0.time, acc_0.data_x, acc_1.time, acc_1.data_x, acc_2.time, acc_2.data_x);
  vel_1.data_y = getVelocity(acc_0.time, acc_0.data_y, acc_1.time, acc_1.data_y, acc_2.time, acc_2.data_y);
  vel_1.data_z = getVelocity(acc_0.time, acc_0.data_z, acc_1.time, acc_1.data_z, acc_2.time, acc_2.data_z);

  vel_2.time = acc_2.time;
  vel_2.data_x = getVelocity(acc_2.time, acc_0.data_x, acc_1.time, acc_1.data_x, acc_2.time, acc_2.data_x);
  vel_2.data_y = getVelocity(acc_2.time, acc_0.data_y, acc_1.time, acc_1.data_y, acc_2.time, acc_2.data_y);
  vel_2.data_z = getVelocity(acc_2.time, acc_0.data_z, acc_1.time, acc_1.data_z, acc_2.time, acc_2.data_z);
 
  pos_x = getPosition(vel_0.time, vel_0.data_x, vel_1.time, vel_1.data_x, vel_2.time, vel_2.data_x);
  pos_y = getPosition(vel_0.time, vel_0.data_y, vel_1.time, vel_1.data_y, vel_2.time, vel_2.data_y);
  pos_z = getPosition(vel_0.time, vel_0.data_z, vel_1.time, vel_1.data_z, vel_2.time, vel_2.data_z);

 if(tim > 2) tim = 0;


  if(Serial.available() > 0){
    claim = Serial.read();
    Serial.print(readSensor(claim));
  }
  Serial.flush();
}
