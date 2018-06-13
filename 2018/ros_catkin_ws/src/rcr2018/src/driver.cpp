#include <iostream>
#include <cmath>
#include <pigpio.h>
#include <ros/ros.h>
#include <rcr2018/DcmCommand.h>
#include <rcr2018/AngVel.h>
#include <rcr2018/TofSide.h>
#include <rcr2018/SvmCommand.h>

const double kp {0.120}; //比例ゲインを決定
const double ki {0.060}; //積分ゲインを決定

const int PWMPIN_S {19}; //PWMピンのピン配置を19番ピンに
const double svm_a  {2.0}; //シグモイド関数の定数
const int frequency_sv {500}; //サーボモータの周波数

const int PWMPIN_D {18}; //PWMピンのピン配置を18番ピンに
const int DIRPIN {23}; //DIRピンのピン配置を23番ピンに
const int frequency {100};

double dev_tar_out {0.0}; //現時点での目標値と出力値の差の初期化
double dev_tar_out_pre {0.0}; //一つ前時点での目標値と出力値の差の初期化
double ang_vel {0.0}; //出力角度の初期化

bool is_finish {false}; //終了判定

const int START_SW_PIN {25};


double sigmoid(double x, double a) //シグモイド関数
{
  return 1 / (1 + std::exp(-a * x));
}

double pulse_change_value(double difference_value) //パルス幅
{
  return 2 * 0.6 * (sigmoid(difference_value, svm_a) - 0.5);
}

//linecount callback function
void linemsgCallback(const rcr2018::LineCount::ConstPtr& msg) //フォトセンサーの回数読み込み
{
  if (msg->count > 3) //終了指示判定
  {
    is_finish = true;
  }
}


void commandmsgCallback(const rcr2018::DcmCommand::ConstPtr& msg)
{
  if (!is_finish)
  {
    double target_value {msg->cmd_vel}; //目標角速度

    double output_value {ang_vel}; //出力角度

    dev_tar_out = target_value - output_value; //目標角速度と出力角度の差分

    double input_value {(kp * (dev_tar_out - dev_tar_out_pre)) + (ki * dev_tar_out)}; //PI制御器による入力値の決定

    double input_pwm_value {2240.1 * input_value + 29594.0}; //入力PWM信号のデューティ比を決定

    gpioWrite(DIRPIN, 0); //DIRピンの出力を決定
    gpioHardwarePWM(PWMPIN_D, frequency, static_cast<int>(input_pwm_value)); //DCモータにPWM信号を入力
    dev_tar_out_pre = dev_tar_out; //次の時点のため、現時点での値を保存
  }

}

void encodermsgCallback(const rcr2018::AngVel::ConstPtr& msg)
{
  ang_vel = msg->ang_vel; //ロータリーエンコーダの出力値
}

int main(int argc, char** argv)
{
  if (gpioInitialise() < 0) //pigpioの初期化
  {
    std::cout << "error" << std::endl;
    return -1;
  }

  int pin_value {0};

  if (wiringPiSetupGpio() == -1)
  {
     std::cout << "ERROR" << std::endl;
     return -1;
  }

  pinMode(START_SW_PIN, INPUT);

  gpioSetMode(PWMPIN_D, PI_OUTPUT); //PWMピンのセット
  gpioSetMode(DIRPIN, PI_OUTPUT); //DIRピンのセット
  gpioSetMode(PWMPIN_S, PI_OUTPUT); //PWMピンをセット

  ros::init(argc, argv, "driver"); //ノード名の初期化

  ros::NodeHandle nh; //ノードハンドル宣言

  pin_value = digitalRead(START_SW_PIN);

  while(pin_value != 0)
  {
    pin_value = digitalRead(START_SW_PIN);
  }

  ros::Subscriber dcmotor_driver_sub = nh.subscribe("dcm_command", 1, commandmsgCallback);
  ros::Subscriber encoder_sub = nh.subscribe("ang_vel", 1, encodermsgCallback);
  ros::Subscriber svmotor_command_sub {nh.subscribe<rcr2018::TofSide>("tof_side", 1,
    std::function<void (const rcr2018::TofSide::ConstPtr&)>
    {
      [&](const rcr2018::TofSide::ConstPtr& constptr)
      {
        if (!is_finish)
        {
          double pulse_target_value {0}; //目標角度の初期化

          double difference { constptr->left - constptr->right }; //左センサと右センサの値の差

          pulse_target_value = 1.5 - pulse_change_value(difference); //目標角度の決定

          double input_pwm_value { 1000000 * pulse_target_value / 20 }; //入力PWM信号のデューティ比を決定
          // pwmWrite(PWMPIN_S, input_pwm_value); //サーボモータに出力
          gpioHardwarePWM(PWMPIN_S, frequency_sv, static_cast<int>(input_pwm_value)); //RCサーボモータにPWM信号を入力
        }
      }
    }
  )}; //サブスクライバの設定

  ros::spin();

  return 0;
}
