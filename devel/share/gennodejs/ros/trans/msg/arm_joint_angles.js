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

class arm_joint_angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.z0 = null;
      this.x1 = null;
      this.x2 = null;
      this.x3 = null;
    }
    else {
      if (initObj.hasOwnProperty('z0')) {
        this.z0 = initObj.z0
      }
      else {
        this.z0 = 0.0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('x3')) {
        this.x3 = initObj.x3
      }
      else {
        this.x3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_joint_angles
    // Serialize message field [z0]
    bufferOffset = _serializer.float64(obj.z0, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float64(obj.x1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float64(obj.x2, buffer, bufferOffset);
    // Serialize message field [x3]
    bufferOffset = _serializer.float64(obj.x3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_joint_angles
    let len;
    let data = new arm_joint_angles(null);
    // Deserialize message field [z0]
    data.z0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x3]
    data.x3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trans/arm_joint_angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dfb18a64868d584f9a6327efbfbf276';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 z0
    float64 x1
    float64 x2
    float64 x3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_joint_angles(null);
    if (msg.z0 !== undefined) {
      resolved.z0 = msg.z0;
    }
    else {
      resolved.z0 = 0.0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.x3 !== undefined) {
      resolved.x3 = msg.x3;
    }
    else {
      resolved.x3 = 0.0
    }

    return resolved;
    }
};

module.exports = arm_joint_angles;
