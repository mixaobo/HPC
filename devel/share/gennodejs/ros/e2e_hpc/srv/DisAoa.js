// Auto-generated. Do not edit!

// (in-package e2e_hpc.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DisAoaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Distance = null;
      this.AoA = null;
    }
    else {
      if (initObj.hasOwnProperty('Distance')) {
        this.Distance = initObj.Distance
      }
      else {
        this.Distance = 0.0;
      }
      if (initObj.hasOwnProperty('AoA')) {
        this.AoA = initObj.AoA
      }
      else {
        this.AoA = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisAoaRequest
    // Serialize message field [Distance]
    bufferOffset = _serializer.float64(obj.Distance, buffer, bufferOffset);
    // Serialize message field [AoA]
    bufferOffset = _serializer.float64(obj.AoA, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisAoaRequest
    let len;
    let data = new DisAoaRequest(null);
    // Deserialize message field [Distance]
    data.Distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AoA]
    data.AoA = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'e2e_hpc/DisAoaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdd62682e37010cc81e982ba74365e59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 Distance
    float64 AoA
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisAoaRequest(null);
    if (msg.Distance !== undefined) {
      resolved.Distance = msg.Distance;
    }
    else {
      resolved.Distance = 0.0
    }

    if (msg.AoA !== undefined) {
      resolved.AoA = msg.AoA;
    }
    else {
      resolved.AoA = 0.0
    }

    return resolved;
    }
};

class DisAoaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.returnvalue = null;
    }
    else {
      if (initObj.hasOwnProperty('returnvalue')) {
        this.returnvalue = initObj.returnvalue
      }
      else {
        this.returnvalue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisAoaResponse
    // Serialize message field [returnvalue]
    bufferOffset = _serializer.int8(obj.returnvalue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisAoaResponse
    let len;
    let data = new DisAoaResponse(null);
    // Deserialize message field [returnvalue]
    data.returnvalue = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'e2e_hpc/DisAoaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1bee4b175fffcd9e09dc7bc8dbfef82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int8 returnvalue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisAoaResponse(null);
    if (msg.returnvalue !== undefined) {
      resolved.returnvalue = msg.returnvalue;
    }
    else {
      resolved.returnvalue = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: DisAoaRequest,
  Response: DisAoaResponse,
  md5sum() { return '1333d23ef3de7dce5e31068bfe611dd5'; },
  datatype() { return 'e2e_hpc/DisAoa'; }
};
