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

class CustomMsg_Ranging {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ble_status = null;
      this.anchor_system_time = null;
      this.anchor_received_time = null;
      this.firstPath_power = null;
      this.aoa = null;
      this.distance = null;
      this.hpc_system_time = null;
    }
    else {
      if (initObj.hasOwnProperty('ble_status')) {
        this.ble_status = initObj.ble_status
      }
      else {
        this.ble_status = '';
      }
      if (initObj.hasOwnProperty('anchor_system_time')) {
        this.anchor_system_time = initObj.anchor_system_time
      }
      else {
        this.anchor_system_time = 0;
      }
      if (initObj.hasOwnProperty('anchor_received_time')) {
        this.anchor_received_time = initObj.anchor_received_time
      }
      else {
        this.anchor_received_time = 0;
      }
      if (initObj.hasOwnProperty('firstPath_power')) {
        this.firstPath_power = initObj.firstPath_power
      }
      else {
        this.firstPath_power = 0.0;
      }
      if (initObj.hasOwnProperty('aoa')) {
        this.aoa = initObj.aoa
      }
      else {
        this.aoa = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('hpc_system_time')) {
        this.hpc_system_time = initObj.hpc_system_time
      }
      else {
        this.hpc_system_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMsg_Ranging
    // Serialize message field [ble_status]
    bufferOffset = _serializer.string(obj.ble_status, buffer, bufferOffset);
    // Serialize message field [anchor_system_time]
    bufferOffset = _serializer.uint64(obj.anchor_system_time, buffer, bufferOffset);
    // Serialize message field [anchor_received_time]
    bufferOffset = _serializer.uint64(obj.anchor_received_time, buffer, bufferOffset);
    // Serialize message field [firstPath_power]
    bufferOffset = _serializer.float64(obj.firstPath_power, buffer, bufferOffset);
    // Serialize message field [aoa]
    bufferOffset = _serializer.float64(obj.aoa, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [hpc_system_time]
    bufferOffset = _serializer.uint64(obj.hpc_system_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMsg_Ranging
    let len;
    let data = new CustomMsg_Ranging(null);
    // Deserialize message field [ble_status]
    data.ble_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [anchor_system_time]
    data.anchor_system_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [anchor_received_time]
    data.anchor_received_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [firstPath_power]
    data.firstPath_power = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aoa]
    data.aoa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hpc_system_time]
    data.hpc_system_time = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ble_status.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_hpc/CustomMsg_Ranging';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d0e3001a21853e4431bd85b875d239e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ble_status
    uint64 anchor_system_time
    uint64 anchor_received_time
    float64 firstPath_power
    float64 aoa
    float64 distance
    uint64 hpc_system_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMsg_Ranging(null);
    if (msg.ble_status !== undefined) {
      resolved.ble_status = msg.ble_status;
    }
    else {
      resolved.ble_status = ''
    }

    if (msg.anchor_system_time !== undefined) {
      resolved.anchor_system_time = msg.anchor_system_time;
    }
    else {
      resolved.anchor_system_time = 0
    }

    if (msg.anchor_received_time !== undefined) {
      resolved.anchor_received_time = msg.anchor_received_time;
    }
    else {
      resolved.anchor_received_time = 0
    }

    if (msg.firstPath_power !== undefined) {
      resolved.firstPath_power = msg.firstPath_power;
    }
    else {
      resolved.firstPath_power = 0.0
    }

    if (msg.aoa !== undefined) {
      resolved.aoa = msg.aoa;
    }
    else {
      resolved.aoa = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.hpc_system_time !== undefined) {
      resolved.hpc_system_time = msg.hpc_system_time;
    }
    else {
      resolved.hpc_system_time = 0
    }

    return resolved;
    }
};

module.exports = CustomMsg_Ranging;
