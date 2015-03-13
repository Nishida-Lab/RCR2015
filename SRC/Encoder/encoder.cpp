#include <wiringPi.h>
#include <stdexcept>
//#include <iostream>

#include "encoder.hpp"

void RearEncCnt(void);
void FrontEncCnt(void);

Enc rear_data[2];
Enc front_data[2];
long local_front_cnt;
long local_rear_cnt;
Enc local_rear_pin;
Enc local_front_pin;


Encoder::Encoder() :
  rear_pin(Enc(4,5)), 
  front_pin(Enc(27,28))
{

  // Initialization
  if(wiringPiSetup() < 0)
    throw runtime_error("Wiring Pi : Can not initialize ...orz");
  
  pullUpDnControl(rear_pin.first, PUD_UP);
  pullUpDnControl(rear_pin.second, PUD_UP);
  pullUpDnControl(front_pin.first, PUD_UP); 
  pullUpDnControl(front_pin.second, PUD_UP);

  wiringPiISR(rear_pin.first, INT_EDGE_BOTH, RearEncCnt); 
  wiringPiISR(rear_pin.second, INT_EDGE_BOTH,RearEncCnt);
  
  local_rear_pin = rear_pin;
  local_front_pin = front_pin;
  for(int i=0; i<2; i++){
    rear_data[i] = Enc(0,0);
    front_data[i] = Enc(0,0);
  }
  local_rear_cnt = 0;
  local_front_cnt = 0;
}

Encoder::~Encoder()
{
  ;
}

void Encoder::GetCnt(long &front_cnt, long &rear_cnt)
{
  rear_cnt = local_rear_cnt;
  front_cnt = local_front_cnt;
}

void RearEncCnt(void)
{
  // Now Phase
  rear_data[0].first = digitalRead(local_rear_pin.first);
  rear_data[0].second = digitalRead(local_rear_pin.second);

  if(rear_data[0].first == rear_data[1].second){
    local_rear_cnt++;
    cout << "REAR CW : " << local_rear_cnt << endl;

  }else{
    local_rear_cnt--;
    cout << "REAR CCW : " << local_rear_cnt << endl;
  }

  rear_data[1] = rear_data[0];
}

void FrontEncCnt(void)
{
  // Now Phase
  front_data[0].first = digitalRead(local_front_pin.first);
  front_data[0].second = digitalRead(local_front_pin.second);

  if(front_data[0].first == front_data[1].second){
    local_front_cnt++;
    cout << "FRONT CW : " << local_front_cnt << endl;
  }else{
    local_front_cnt--;
    cout << "FRONT CCW : " << local_front_cnt << endl;
  }

  front_data[1] = front_data[0];
}
