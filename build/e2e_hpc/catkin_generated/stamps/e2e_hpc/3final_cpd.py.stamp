#!/usr/bin/env python3.9
import serial

# from sensor_msgs.msg import PointCloud
from std_msgs.msg import Float64
from std_msgs.msg import String
# from sensor_msgs.msg import Image

import numpy as np
from scipy.optimize import least_squares
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
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import matplotlib
# ser = serial.Serial(
#     port='COM12',\
#     baudrate=115200,\
#     parity=serial.PARITY_NONE,\
#     stopbits=serial.STOPBITS_ONE,\
#     bytesize=serial.EIGHTBITS,\
#         timeout=0)


print("Init variables...")
TimeOfFlight = 0
AngleOfArrival = 0
StrongestPathPower =0
counter = 0
theta_res = 100
radii_res = 400
count = 0
radi = []
goc = []
ad_low = 25*255/80
ad_span = 30*255/80
ad_max = 80
ad_high = ad_low + ad_span

old_val_count = 100
old_val_theta = 0

a = 0
b = 0
k = 0
new = 0
count = 0
temp = 0
final = []
bars = []
radi = []
img = []
goc = 0
t = 0
deltaT = 2*np.pi/(theta_res)
c = np.cos(deltaT)
s = np.sin(deltaT)
verts = np.zeros((theta_res+1, radii_res+1, 3))
radii_scale = np.linspace(0, 10, radii_res+1)
verts[0, :, 0] = radii_scale
count = 0
AngleOfArrival_old = 0
TimeOfFlight_1_old = 0
TimeOfFlight_0_old = 0

#EKF
anchor1 = np.array([0, 0])
true_distance = 66
true_aoa = 40
matplotlib.use("TkAgg")
def calculate_coordinates(anchor1, d1, aoa1):
    """
    Calculate the coordinates of the object using trilateration.
    """
    # Convert angles from degrees to radians
    aoa1_rad = np.deg2rad(aoa1)

    # Calculate the coordinates
    x = anchor1[0] + d1 * np.cos(aoa1_rad)
    y = anchor1[1] + d1 * np.sin(aoa1_rad)

    # Return the coordinates as a NumPy array
    coordinates = np.array([x, y])
    return coordinates


# Residual function for optimization
def residuals(p, anchor1, d1, aoa1):
    x, y = p  # Estimated position (x, y)
    
    # Distance residuals
    r1 = np.linalg.norm([x - anchor1[0], y - anchor1[1]]) - d1
    
    # Angle residuals
    a1 = np.arctan2(y - anchor1[1], x - anchor1[0]) - np.deg2rad(aoa1)
    
    return [r1, a1]

# Estimate position using least squares 
def estimate_position(d1, aoa1):
    initial_guess = calculate_coordinates(anchor1, d1, aoa1)
    measure_arr.append(initial_guess)
    result = least_squares(residuals, 
                        initial_guess,
                        args=(anchor1, d1, aoa1),
                        method='lm')
    return result.x
self_x = calculate_coordinates(anchor1, true_distance, 20)  # Initial state closer to the expected position
self_P = np.eye(2) * 5  # Reduced initial uncertainty
self_Q = np.eye(2) * 0.05  # Smaller process noise
self_R = np.diag([10**2, np.deg2rad(8)**2])  # base on spec or real test
# EKF Class
class ExtendedKalmanFilter:
    def __init__(self):
        self.x = self_x
        self.P = self_P
        self.Q = self_Q
        self.R = self_R
    
    def predict(self):
        # Prediction step (no motion model, so state remains the same)
        self.P = self.P + self.Q

    def update(self, z, anchor1):
        # Measurement model
        px, py = self.x
        d1_pred = np.sqrt((px - anchor1[0])**2 + (py - anchor1[1])**2)
        #aoa1_pred = np.arctan2(py - anchor1[1], px - anchor1[0])
        z_pred = np.array([d1_pred, 0])

        # Jacobian of the measurement model
        d1_dx = (px - anchor1[0]) / d1_pred
        d1_dy = (py - anchor1[1]) / d1_pred
        dx = px - anchor1[0]
        dy = py - anchor1[1]
        r2 = dx**2 + dy**2

        aoa1_dx = -dy / r2
        aoa1_dy = dx / r2
        H = np.array([[d1_dx, d1_dy],
                      [0, 0]])

        # Update step
        y = z - z_pred  # Measurement residual
        y[1] = (y[1] + np.pi) % (2 * np.pi) - np.pi
        S = H @ self.P @ H.T + self.R  # Residual covariance
        K = self.P @ H.T @ np.linalg.inv(S)  # Kalman gain
        self.x = self.x + K @ y  # Update state estimate
        self.P = (np.eye(2) - K @ H) @ self.P  # Update covariance

    def current_position(self):
        return self.x



ekf = ExtendedKalmanFilter()

def header(data):
    global heading
    heading = -data.data



def set_array_to_zero(arr):
    return [0] * len(arr)

TimeOfFlight_0_mean = [0] * 4
TimeOfFlight_1_mean = [0] * 4
scan_angle_mean = [0] * 4
counter2 = 0
start = 0
def rmse(predictions, targets):
    return np.sqrt(((predictions - targets) ** 2).mean())
    
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

class KalmanFilter1D:
    def __init__(self, process_variance, measurement_variance, initial_estimate=0.0, initial_error=1.0):
        self.Q = process_variance         # Process variance (uncertainty in the model)
        self.R = measurement_variance     # Measurement variance (uncertainty in the measurements)
        self.x = initial_estimate         # Initial estimate
        self.P = initial_error            # Initial estimate uncertainty

    def update(self, measurement):
        # Prediction update (predict current state and error covariance)
        self.P += self.Q

        # Measurement update (Kalman Gain)
        K = self.P / (self.P + self.R)

        # Update estimate with measurement
        self.x += K * (measurement - self.x)

        # Update the error covariance
        self.P *= (1 - K)

        return self.x

def lowpassfilter(new_measure,old_measure,alpha = 0.1):
    return new_measure*alpha + old_measure*(1-alpha)

def unwrapPhase( prev,  current) :
    delta = current - prev
    if (delta > 3.14):
        current -= 2 * 3.14
    elif (delta < -3.14):
        current += 2 * 3.14
    return current

x_data = []
y_data_1 = []
y_data_2 = []

fig, ax = plt.subplots()
line_1, = ax.plot([], [], label='Data Series 1')
line_2, = ax.plot([], [], label='Data Series 2')
count = 0

kf = KalmanFilter1D(process_variance=1e-5, measurement_variance=0.1**2, initial_estimate=0.0)

def rmse(predictions, targets):
    return np.sqrt(((predictions - targets) ** 2))

def distance_callback(data):
    print(data.data)

def listener():
    
    print("here")
    rospy.init_node("CPD", anonymous=True)
    rospy.Subscriber("/chatter", String, distance_callback)
    rospy.Subscriber("/heading/", Float64, header)
    rospy.spin()

if __name__ == '__main__':
    plt.show()
    listener()

    
        
