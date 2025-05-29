// Auto-generated. Do not edit!

// (in-package e2e_hpc.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CustomMsg_Door {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FrontLeft = null;
      this.FrontRight = null;
      this.RearLeft = null;
      this.RearRight = null;
      this.Trunk = null;
    }
    else {
      if (initObj.hasOwnProperty('FrontLeft')) {
        this.FrontLeft = initObj.FrontLeft
      }
      else {
        this.FrontLeft = [];
      }
      if (initObj.hasOwnProperty('FrontRight')) {
        this.FrontRight = initObj.FrontRight
      }
      else {
        this.FrontRight = [];
      }
      if (initObj.hasOwnProperty('RearLeft')) {
        this.RearLeft = initObj.RearLeft
      }
      else {
        this.RearLeft = [];
      }
      if (initObj.hasOwnProperty('RearRight')) {
        this.RearRight = initObj.RearRight
      }
      else {
        this.RearRight = [];
      }
      if (initObj.hasOwnProperty('Trunk')) {
        this.Trunk = initObj.Trunk
      }
      else {
        this.Trunk = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMsg_Door
    // Serialize message field [FrontLeft]
    bufferOffset = _arraySerializer.string(obj.FrontLeft, buffer, bufferOffset, null);
    // Serialize message field [FrontRight]
    bufferOffset = _arraySerializer.string(obj.FrontRight, buffer, bufferOffset, null);
    // Serialize message field [RearLeft]
    bufferOffset = _arraySerializer.string(obj.RearLeft, buffer, bufferOffset, null);
    // Serialize message field [RearRight]
    bufferOffset = _arraySerializer.string(obj.RearRight, buffer, bufferOffset, null);
    // Serialize message field [Trunk]
    bufferOffset = _arraySerializer.string(obj.Trunk, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMsg_Door
    let len;
    let data = new CustomMsg_Door(null);
    // Deserialize message field [FrontLeft]
    data.FrontLeft = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [FrontRight]
    data.FrontRight = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [RearLeft]
    data.RearLeft = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [RearRight]
    data.RearRight = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [Trunk]
    data.Trunk = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.FrontLeft.forEach((val) => {
      length += 4 + val.length;
    });
    object.FrontRight.forEach((val) => {
      length += 4 + val.length;
    });
    object.RearLeft.forEach((val) => {
      length += 4 + val.length;
    });
    object.RearRight.forEach((val) => {
      length += 4 + val.length;
    });
    object.Trunk.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_hpc/CustomMsg_Door';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60ef31f79c819e28a0085a08d8ae1c89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] FrontLeft   
    string[] FrontRight   
    string[] RearLeft     
    string[] RearRight    
    string[] Trunk        
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMsg_Door(null);
    if (msg.FrontLeft !== undefined) {
      resolved.FrontLeft = msg.FrontLeft;
    }
    else {
      resolved.FrontLeft = []
    }

    if (msg.FrontRight !== undefined) {
      resolved.FrontRight = msg.FrontRight;
    }
    else {
      resolved.FrontRight = []
    }

    if (msg.RearLeft !== undefined) {
      resolved.RearLeft = msg.RearLeft;
    }
    else {
      resolved.RearLeft = []
    }

    if (msg.RearRight !== undefined) {
      resolved.RearRight = msg.RearRight;
    }
    else {
      resolved.RearRight = []
    }

    if (msg.Trunk !== undefined) {
      resolved.Trunk = msg.Trunk;
    }
    else {
      resolved.Trunk = []
    }

    return resolved;
    }
};

module.exports = CustomMsg_Door;
