#!/usr/bin/env python2
import rospy
import numpy as np
from ros_basics_turorials.msg import CustomMsg_Ranging

def talker():
    # Creates a publisher object for the topic 'chatter', which uses the `String` message type.
    # The `queue_size=10` ensures that up to 10 messages are buffered before being processed by subscribers.
    pub_Driver = rospy.Publisher('topic_Ranging_Driver', CustomMsg_Ranging, queue_size=10) 
    pub_Passenger = rospy.Publisher('topic_Ranging_Passenger', CustomMsg_Ranging, queue_size=10) 
    
    # Initializes the ROS node with the name 'talker'. The `anonymous=True` argument ensures
    # that if multiple instances of this node are launched, they will have unique names.
    rospy.init_node('talker', anonymous=True)

    # Sets the rate at which the loop will run. Here, the loop will execute once per second (1 Hz).
    rate = rospy.Rate(2)

    # A counter variable used to modify the message content in each iteration.
    distance = 20
    i = 0
    index = 0
    while not rospy.is_shutdown():
        # Creates a string message with a counter value appended to "hello world".
        ranging_msg = CustomMsg_Ranging()
        if (i  == 358):
            i = 0
        # Logs the message content to the console for debugging or monitoring purposes.
        ranging_msg.distance = 20  
        ranging_msg.aoa = i 
        

        # Logs the message content to the console for debugging or monitoring purposes.
        print(ranging_msg)
        
        # Publishes the message to the 'chatter' topic. This message will be sent to all subscribers
        pub_Driver.publish(ranging_msg)
        ranging_msg.distance = 200  
        ranging_msg.aoa = 358 - i
        pub_Passenger.publish(ranging_msg)
        
        # Pauses the loop for the duration specified by the rate (1 second in this case).
        rate.sleep()

        # Increments the counter to modify the message content in the next iteration.
        i += 2
        index +=1


if __name__ == '__main__':
    try:
        # Calls the function to start publishing messages to the topic.
        talker()
    except rospy.ROSInterruptException:
        # Handles the exception if the ROS node is interrupted (e.g., by pressing Ctrl+C).
        pass
