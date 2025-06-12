#!/usr/bin/env python3.9
import socket
import time

# Server (receiver) details
HOST = '192.168.8.70'  # Replace with the IP address of the receiver
PORT = 100        # Replace with the port number of the receiver

# Create a TCP socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
i = 0
try:
    # Connect to the server
    s.connect((HOST, PORT))
    print("Connected to {}:{}".format(HOST, PORT))

    # Simulate sending data in a loop
    while True:
        # Create a message to send
        message = "Hello from TCP client 1! {}".format(i)
        i += 1
        
        # Send the message to the server
        s.sendall(message.encode('utf-8'))
        print("Sent:", message)
        
        # Wait for 1 second before sending the next message
        time.sleep(1)
except Exception as e:
    print("Error:", e)
    pass
finally:
    # Close the socket to release resources
    s.close()