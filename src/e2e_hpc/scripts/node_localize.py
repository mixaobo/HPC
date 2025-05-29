#!/usr/bin/env python2
import rospy
import numpy as np
from e2e_hpc.msg import CustomMsg_Ranging




"""
#This function calculates the residuals for the optimization problem.
def residuals(p, anchor, d, aoa_rad):
    x, y = p
    dx, dy = x - anchor[0], y - anchor[1]
    pred_d = np.hypot(dx, dy)
    pred_aoa = np.arctan2(dy, dx)
    return [pred_d - d, wrap_angle(pred_aoa - aoa_rad)]



def estimate_position(d, aoa_deg):
    aoa_rad = np.deg2rad(aoa_deg)
    initial_guess = calculate_initial_guess(anchor1, d, aoa_deg)
    result = least_squares(residuals, initial_guess, args=(anchor1, d, aoa_rad), method='lm')
    return result.x
"""
anchor1 = np.array([0.0, 0.0])  # Fixed anchor position
Sync_Flag = [0,0]
RangingMsg_Passenger = CustomMsg_Ranging()
RangingMsg_Driver = CustomMsg_Ranging()


def wrap_angle_radians(angle):
    return (angle + np.pi) % (2 * np.pi) - np.pi

def wrap_angle_360(angle):
    """Wrap angle to [0, 360) degrees."""
    return angle % 360

def calculate_initial_guess(anchor, d, aoa_deg):
    aoa_rad = np.deg2rad(aoa_deg)
    x = anchor[0] + d * np.cos(aoa_rad)
    y = anchor[1] + d * np.sin(aoa_rad)
    return np.array([x, y])

def calcualte_distance_angle(x1, y1, x2, y2):
    dx = x2 - x1
    dy = y2 - y1
    distance = np.hypot(dx, dy)
    angle_rad = np.arctan2(dy, dx)
    angle_deg = np.rad2deg(angle_rad)
    return distance, angle_deg

class ExtendedKalmanFilter:
    def __init__(self, x_init, P_init, Q, R):
        self.x = x_init
        self.P = P_init
        self.Q = Q
        self.R = R

    def predict(self):
        self.P = self.P + self.Q

    def update(self, z, anchor):
        px, py = self.x
        dx, dy = px - anchor[0], py - anchor[1]
        d_pred = np.hypot(dx, dy)
        aoa_pred = np.arctan2(dy, dx)
        z_pred = np.array([d_pred, aoa_pred])

        r2 = dx**2 + dy**2
        H = np.array([
            [dx/d_pred, dy/d_pred],
            [-dy/r2,     dx/r2]
        ])

        y = z - z_pred
        y[1] = wrap_angle_radians(y[1])

        S = H.dot(self.P).dot(H.T) + self.R
        K = self.P.dot(H.T).dot(np.linalg.inv(S))
        self.x = self.x + K.dot(y)
        self.P = (np.eye(2) - K.dot(H)).dot(self.P)

    def current_position(self):
        return self.x

def Ranging_callback(msg):
    global pub_Localization_Driver, pub_Localization_Passenger, RangingMsg_Driver, RangingMsg_Passenger
    
    """ For Driver Anchor"""
    d = RangingMsg_Driver.distance
    aoa_rad = np.deg2rad(RangingMsg_Driver.aoa)
    z = np.array([d, aoa_rad])
    ekf_driver.predict()
    ekf_driver.update(z, anchor1)
    
    #Debug msg
    received_xy_Driver = calculate_initial_guess(anchor1, RangingMsg_Driver.distance, RangingMsg_Driver.aoa)
    print("Received Index  {} / {} / {} ".format(RangingMsg_Driver.distance, RangingMsg_Driver.aoa, received_xy_Driver))
    predict_xy_Driver = ekf_driver.current_position()
    deviation = np.abs((np.linalg.norm(predict_xy_Driver) - np.linalg.norm(received_xy_Driver)))
    # if (deviation >= 5):
    #     print("Deviation too large, ignoring prediction")
    # else:
    #public position to other node
    msg_localization = CustomMsg_Ranging()
    predict_distance_Driver, predict_angle_Driver = calcualte_distance_angle(0, 0, predict_xy_Driver[0], predict_xy_Driver[1])
    print("Predicted Index  {} / {} / {} ".format(predict_distance_Driver, predict_angle_Driver, predict_xy_Driver))
    msg_localization.system_time = RangingMsg_Driver.system_time
    msg_localization.received_time = RangingMsg_Driver.received_time
    msg_localization.firstPath_power = RangingMsg_Driver.firstPath_power
    msg_localization.distance = predict_distance_Driver
    msg_localization.aoa = predict_angle_Driver
    pub_Localization_Driver.publish(msg_localization)
    print("------------")
    
    
    """ For Passenger Anchor"""
    """
    d = RangingMsg_Passenger.distance
    aoa_rad = np.deg2rad(RangingMsg_Passenger.aoa)
    z = np.array([d, aoa_rad])
    ekf_passenger.predict()
    ekf_passenger.update(z, anchor1)
    
    #Debug msg
    received_xy_Passenger = calculate_initial_guess(anchor1, RangingMsg_Passenger.distance, RangingMsg_Passenger.aoa)
    print("Received Index  {} / {} / {} ".format(RangingMsg_Passenger.distance, RangingMsg_Passenger.aoa, received_xy_Passenger))
    predict_xy_Passenger = ekf_passenger.current_position()
    deviation = np.abs((np.linalg.norm(predict_xy_Passenger) - np.linalg.norm(received_xy_Passenger)))
    if (deviation >= 5):
        print("Deviation too large, ignoring prediction")
    else:
        #public position to other node
        msg_localization = CustomMsg_Ranging()
        predict_distance_Passenger, predict_angle_Passenger = calcualte_distance_angle(0, 0, predict_xy_Passenger[0], predict_xy_Passenger[1])
        print("Predicted Index  {} / {} / {} ".format(predict_distance_Passenger, predict_angle_Passenger, predict_xy_Passenger))
        msg_localization.system_time = RangingMsg_Passenger.system_time
        msg_localization.received_time = RangingMsg_Passenger.received_time
        msg_localization.firstPath_power = RangingMsg_Passenger.firstPath_power
        msg_localization.distance = predict_distance_Passenger
        msg_localization.aoa = predict_angle_Passenger
        pub_Localization_Passenger.publish(msg_localization)
    print("------------")
    """
    

    
def Ranging_Passenger_callback(msg):
    global RangingMsg_Passenger, Sync_Flag
    RangingMsg_Passenger.system_time = msg.system_time
    RangingMsg_Passenger.received_time = msg.received_time
    RangingMsg_Passenger.firstPath_power = msg.firstPath_power
    RangingMsg_Passenger.aoa = msg.aoa
    RangingMsg_Passenger.distance = msg.distance
    Sync_Flag[0] = 1
    if(Sync_Flag[0] == 1) or (Sync_Flag[1] == 1):
        Ranging_callback(RangingMsg_Passenger)
        Sync_Flag[0] = 0
        Sync_Flag[1] = 0
    
def Ranging_Driver_callback(msg):
    global RangingMsg_Driver, Sync_Flag
    RangingMsg_Driver.system_time = msg.system_time
    RangingMsg_Driver.received_time = msg.received_time
    RangingMsg_Driver.firstPath_power = msg.firstPath_power
    RangingMsg_Driver.aoa = msg.aoa
    RangingMsg_Driver.distance = msg.distance
    Ranging_callback(RangingMsg_Driver)
    # Sync_Flag[1] = 1
    # if(Sync_Flag[0] == 1) or (Sync_Flag[1] == 1):
    #     
    #     Sync_Flag[0] = 0
    #     Sync_Flag[1] = 0

def Node_localize():
    global pub_Localization_Driver, pub_Localization_Passenger
    #Initialize
    rospy.init_node('node_Localization', anonymous=True)

    #Publish to
    pub_Localization_Driver = rospy.Publisher('topic_Localization_Driver', CustomMsg_Ranging, queue_size=10)
    pub_Localization_Passenger = rospy.Publisher('pub_Localization_Passenger', CustomMsg_Ranging, queue_size=10)

    #Subscribe to
    rospy.Subscriber('topic_Ranging_Driver', CustomMsg_Ranging, Ranging_Driver_callback)
    #rospy.Subscriber('topic_Ranging_Passenger', CustomMsg_Ranging, Ranging_Passenger_callback)
    print("Start node")
    rospy.spin()

# Initial state
# P:  < 1: trust more on inital predictions / ~5: balance / >10: trust more on measurements
# Q: 0.01: standstill/ 0.1: Slow movement / fast movement 0.3 ~ 0.5 / Vehicle: 1.0+
# R Small: trust measurrements / Large: trust predictions. variance = standard_deviation**2
initial_x = calculate_initial_guess(anchor1, 10, 40)
ekf_driver = ExtendedKalmanFilter(
    x_init=initial_x,
    P_init=np.eye(2) * 100,
    Q=np.eye(2) * 5.0,
    R=np.diag([5**2, np.deg2rad(5.0)**2]) #(cm, aoa)
)

ekf_passenger = ExtendedKalmanFilter(
    x_init=initial_x,
    P_init=np.eye(2) * 100,
    Q=np.eye(2) * 5.0,
    R=np.diag([5**2, np.deg2rad(5.0)**2]) #(cm, aoa)
)

if __name__ == '__main__':
    Node_localize()
