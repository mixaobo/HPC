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

class CustomMsg_Connection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.veh_status = null;
      this.ble_status = null;
      this.uwb_status = null;
    }
    else {
      if (initObj.hasOwnProperty('veh_status')) {
        this.veh_status = initObj.veh_status
      }
      else {
        this.veh_status = '';
      }
      if (initObj.hasOwnProperty('ble_status')) {
        this.ble_status = initObj.ble_status
      }
      else {
        this.ble_status = '';
      }
      if (initObj.hasOwnProperty('uwb_status')) {
        this.uwb_status = initObj.uwb_status
      }
      else {
        this.uwb_status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMsg_Connection
    // Serialize message field [veh_status]
    bufferOffset = _serializer.string(obj.veh_status, buffer, bufferOffset);
    // Serialize message field [ble_status]
    bufferOffset = _serializer.string(obj.ble_status, buffer, bufferOffset);
    // Serialize message field [uwb_status]
    bufferOffset = _serializer.string(obj.uwb_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMsg_Connection
    let len;
    let data = new CustomMsg_Connection(null);
    // Deserialize message field [veh_status]
    data.veh_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ble_status]
    data.ble_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uwb_status]
    data.uwb_status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.veh_status.length;
    length += object.ble_status.length;
    length += object.uwb_status.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_hpc/CustomMsg_Connection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f9943c60f33233e9a2efcc308c36232';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string veh_status
    string ble_status
    string uwb_status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMsg_Connection(null);
    if (msg.veh_status !== undefined) {
      resolved.veh_status = msg.veh_status;
    }
    else {
      resolved.veh_status = ''
    }

    if (msg.ble_status !== undefined) {
      resolved.ble_status = msg.ble_status;
    }
    else {
      resolved.ble_status = ''
    }

    if (msg.uwb_status !== undefined) {
      resolved.uwb_status = msg.uwb_status;
    }
    else {
      resolved.uwb_status = ''
    }

    return resolved;
    }
};

module.exports = CustomMsg_Connection;
