#!/usr/bin/env python3.9
# import serial
import socket
# from sensor_msgs.msg import PointCloud
# from std_msgs.msg import Float64
# from sensor_msgs.msg import Image

import numpy as np
from std_msgs.msg import String
from std_msgs.msg import Float64
from e2e_hpc.msg import Localize
from e2e_hpc.srv import DisAoa
import rospy
import sys
import time
import os
import serial
import random
import math
import threading
import subprocess
#import matplotlib.pyplot as plt
#import matplotlib.animation as animation
import numpy as np
HOST = '192.168.8.147'
PORT = 100

# ser = serial.Serial(
#     port='/dev/ttyUSB0',\
#     baudrate=115200,\
#     parity=serial.PARITY_NONE,\
#     stopbits=serial.STOPBITS_ONE,\
#     bytesize=serial.EIGHTBITS,\
#         timeout=0)

def _readline():
    eol = b'\n'
    leneol = len(eol)
    line = bytearray()
    while True:
        c = ser.read(1)
        if c:
            line += c
            if line[-leneol:] == eol:
                break
        else:
            continue
    return bytes(line)



def talker():

    pub_localize = rospy.Publisher('chatter_localize', Localize, queue_size=10)
    pub_CPD = rospy.Publisher('chatter_CPD', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            # try:
            #     s.close()
            # except:
            #     continue
            s.bind((HOST, PORT))
            s.listen()
            print(f"Listening on {HOST}:{PORT}")
            conn, addr = s.accept()
            with conn:
                print(f"Connected by {addr}")
                while not rospy.is_shutdown():
                    data = conn.recv(1024)
                    if not data:
                        break
                    print("Received:", data.decode())
                    try:
                        line = data.decode().strip().split("/")
                        print(line)
                        if(float(line[0]) == 4.0):

                            hello_str = Localize()
                            hello_str.TimeOfFlight =  float(line[-2])
                            hello_str.AoA = float(line[-4])
                            print(line)
                            pub_localize.publish(hello_str)
                        elif(float(line[0]) == 5.0):
                            hello_str = line[-1]
                            pub_CPD.publish(hello_str)

                    # print(line)
                    # line = _readline().decode().strip().split("/")
                    # hello_str = Localize()
                    # hello_str.TimeOfFlight =  float(line[0])
                    # hello_str.AoA = float(line[1])
                    # print(hello_str)
                        
                    except:
                        continue
                s.close()   
        # while ser.inWaiting() == 0:
        #     pass
        # line = _readline().decode().strip().split("/")    
        
        # hello_str = Localize()
        # hello_str.TimeOfFlight =  float(line[0])
        # hello_str.AoA = float(line[1])
        # print(hello_str)
        # pub.publish(hello_str)     
        # rate.sleep()
    rospy.spin()

if __name__ == '__main__':

    talker()

    
        
