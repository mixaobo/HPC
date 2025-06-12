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

class CustomMsg_RSSI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pdoa1 = null;
      this.tof1 = null;
      this.rssi1 = null;
      this.pdoa2 = null;
      this.tof2 = null;
      this.rssi2 = null;
    }
    else {
      if (initObj.hasOwnProperty('pdoa1')) {
        this.pdoa1 = initObj.pdoa1
      }
      else {
        this.pdoa1 = 0.0;
      }
      if (initObj.hasOwnProperty('tof1')) {
        this.tof1 = initObj.tof1
      }
      else {
        this.tof1 = 0;
      }
      if (initObj.hasOwnProperty('rssi1')) {
        this.rssi1 = initObj.rssi1
      }
      else {
        this.rssi1 = 0.0;
      }
      if (initObj.hasOwnProperty('pdoa2')) {
        this.pdoa2 = initObj.pdoa2
      }
      else {
        this.pdoa2 = 0.0;
      }
      if (initObj.hasOwnProperty('tof2')) {
        this.tof2 = initObj.tof2
      }
      else {
        this.tof2 = 0;
      }
      if (initObj.hasOwnProperty('rssi2')) {
        this.rssi2 = initObj.rssi2
      }
      else {
        this.rssi2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMsg_RSSI
    // Serialize message field [pdoa1]
    bufferOffset = _serializer.float64(obj.pdoa1, buffer, bufferOffset);
    // Serialize message field [tof1]
    bufferOffset = _serializer.uint64(obj.tof1, buffer, bufferOffset);
    // Serialize message field [rssi1]
    bufferOffset = _serializer.float64(obj.rssi1, buffer, bufferOffset);
    // Serialize message field [pdoa2]
    bufferOffset = _serializer.float64(obj.pdoa2, buffer, bufferOffset);
    // Serialize message field [tof2]
    bufferOffset = _serializer.uint64(obj.tof2, buffer, bufferOffset);
    // Serialize message field [rssi2]
    bufferOffset = _serializer.float64(obj.rssi2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMsg_RSSI
    let len;
    let data = new CustomMsg_RSSI(null);
    // Deserialize message field [pdoa1]
    data.pdoa1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tof1]
    data.tof1 = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [rssi1]
    data.rssi1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pdoa2]
    data.pdoa2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tof2]
    data.tof2 = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [rssi2]
    data.rssi2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_hpc/CustomMsg_RSSI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '278cca35bf3f379767e0057dde46377c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 pdoa1
    uint64 tof1
    float64 rssi1
    float64 pdoa2
    uint64 tof2
    float64 rssi2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMsg_RSSI(null);
    if (msg.pdoa1 !== undefined) {
      resolved.pdoa1 = msg.pdoa1;
    }
    else {
      resolved.pdoa1 = 0.0
    }

    if (msg.tof1 !== undefined) {
      resolved.tof1 = msg.tof1;
    }
    else {
      resolved.tof1 = 0
    }

    if (msg.rssi1 !== undefined) {
      resolved.rssi1 = msg.rssi1;
    }
    else {
      resolved.rssi1 = 0.0
    }

    if (msg.pdoa2 !== undefined) {
      resolved.pdoa2 = msg.pdoa2;
    }
    else {
      resolved.pdoa2 = 0.0
    }

    if (msg.tof2 !== undefined) {
      resolved.tof2 = msg.tof2;
    }
    else {
      resolved.tof2 = 0
    }

    if (msg.rssi2 !== undefined) {
      resolved.rssi2 = msg.rssi2;
    }
    else {
      resolved.rssi2 = 0.0
    }

    return resolved;
    }
};

module.exports = CustomMsg_RSSI;
