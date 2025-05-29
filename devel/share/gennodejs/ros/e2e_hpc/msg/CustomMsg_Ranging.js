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
      this.system_time = null;
      this.received_time = null;
      this.firstPath_power = null;
      this.aoa = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('ble_status')) {
        this.ble_status = initObj.ble_status
      }
      else {
        this.ble_status = '';
      }
      if (initObj.hasOwnProperty('system_time')) {
        this.system_time = initObj.system_time
      }
      else {
        this.system_time = 0;
      }
      if (initObj.hasOwnProperty('received_time')) {
        this.received_time = initObj.received_time
      }
      else {
        this.received_time = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMsg_Ranging
    // Serialize message field [ble_status]
    bufferOffset = _serializer.string(obj.ble_status, buffer, bufferOffset);
    // Serialize message field [system_time]
    bufferOffset = _serializer.uint64(obj.system_time, buffer, bufferOffset);
    // Serialize message field [received_time]
    bufferOffset = _serializer.uint64(obj.received_time, buffer, bufferOffset);
    // Serialize message field [firstPath_power]
    bufferOffset = _serializer.float64(obj.firstPath_power, buffer, bufferOffset);
    // Serialize message field [aoa]
    bufferOffset = _serializer.float64(obj.aoa, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMsg_Ranging
    let len;
    let data = new CustomMsg_Ranging(null);
    // Deserialize message field [ble_status]
    data.ble_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [system_time]
    data.system_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [received_time]
    data.received_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [firstPath_power]
    data.firstPath_power = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aoa]
    data.aoa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ble_status.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_hpc/CustomMsg_Ranging';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e4bb10cce0fbf9c437d573907658add';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ble_status
    uint64 system_time
    uint64 received_time
    float64 firstPath_power
    float64 aoa
    float64 distance
    
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

    if (msg.system_time !== undefined) {
      resolved.system_time = msg.system_time;
    }
    else {
      resolved.system_time = 0
    }

    if (msg.received_time !== undefined) {
      resolved.received_time = msg.received_time;
    }
    else {
      resolved.received_time = 0
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

    return resolved;
    }
};

module.exports = CustomMsg_Ranging;
