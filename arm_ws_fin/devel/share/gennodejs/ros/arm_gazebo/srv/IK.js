// Auto-generated. Do not edit!

// (in-package arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class IKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
      this.link_lengths = null;
      this.positions = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
      if (initObj.hasOwnProperty('link_lengths')) {
        this.link_lengths = initObj.link_lengths
      }
      else {
        this.link_lengths = [];
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float32(obj.joint_angles, buffer, bufferOffset, null);
    // Serialize message field [link_lengths]
    bufferOffset = _arraySerializer.float32(obj.link_lengths, buffer, bufferOffset, null);
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.float32(obj.positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKRequest
    let len;
    let data = new IKRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [link_lengths]
    data.link_lengths = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_angles.length;
    length += 4 * object.link_lengths.length;
    length += 4 * object.positions.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/IKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6297b600f34b49279cff05233d7c04be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint_angles
    float32[] link_lengths
    float32[] positions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    if (msg.link_lengths !== undefined) {
      resolved.link_lengths = msg.link_lengths;
    }
    else {
      resolved.link_lengths = []
    }

    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = []
    }

    return resolved;
    }
};

class IKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('target_positions')) {
        this.target_positions = initObj.target_positions
      }
      else {
        this.target_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKResponse
    // Serialize message field [target_positions]
    bufferOffset = _arraySerializer.float32(obj.target_positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKResponse
    let len;
    let data = new IKResponse(null);
    // Deserialize message field [target_positions]
    data.target_positions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.target_positions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/IKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03d3ed024aad438c1b5b9be5e625f68d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] target_positions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKResponse(null);
    if (msg.target_positions !== undefined) {
      resolved.target_positions = msg.target_positions;
    }
    else {
      resolved.target_positions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: IKRequest,
  Response: IKResponse,
  md5sum() { return 'e5b84018aa5ae0eae79db10fc2c3a626'; },
  datatype() { return 'arm_gazebo/IK'; }
};
