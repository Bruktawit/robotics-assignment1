// Auto-generated. Do not edit!

// (in-package trans.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class output {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_n = null;
      this.y_n = null;
      this.z_n = null;
    }
    else {
      if (initObj.hasOwnProperty('x_n')) {
        this.x_n = initObj.x_n
      }
      else {
        this.x_n = 0.0;
      }
      if (initObj.hasOwnProperty('y_n')) {
        this.y_n = initObj.y_n
      }
      else {
        this.y_n = 0.0;
      }
      if (initObj.hasOwnProperty('z_n')) {
        this.z_n = initObj.z_n
      }
      else {
        this.z_n = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type output
    // Serialize message field [x_n]
    bufferOffset = _serializer.float64(obj.x_n, buffer, bufferOffset);
    // Serialize message field [y_n]
    bufferOffset = _serializer.float64(obj.y_n, buffer, bufferOffset);
    // Serialize message field [z_n]
    bufferOffset = _serializer.float64(obj.z_n, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type output
    let len;
    let data = new output(null);
    // Deserialize message field [x_n]
    data.x_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_n]
    data.y_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_n]
    data.z_n = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trans/output';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2928615e848c3a6d1204cc91f0148376';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_n
    float64 y_n
    float64 z_n
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new output(null);
    if (msg.x_n !== undefined) {
      resolved.x_n = msg.x_n;
    }
    else {
      resolved.x_n = 0.0
    }

    if (msg.y_n !== undefined) {
      resolved.y_n = msg.y_n;
    }
    else {
      resolved.y_n = 0.0
    }

    if (msg.z_n !== undefined) {
      resolved.z_n = msg.z_n;
    }
    else {
      resolved.z_n = 0.0
    }

    return resolved;
    }
};

module.exports = output;
