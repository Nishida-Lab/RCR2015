#!/usr/bin/python

import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

usleep = lambda x: time.sleep(x/(1000*1000.0))

count = 0

def sensor_charge() :
    
    GPIO.setup(4, GPIO.OUT)      

    GPIO.output(4, 1)
  
    usleep(10)        

    GPIO.setup(4, GPIO.IN, pull_up_down=GPIO.PUD_UP)


while True:
    
    try:

        sensor_charge()
        
        
            
        while GPIO.input(4) == 1:
              
             print('BLACK')
                
        while GPIO.input(4) == 0:


            print('WHITE')

            

        
          
    except KeyboardInterrupt :
        GPIO.cleanup()
        exit(0)
        
