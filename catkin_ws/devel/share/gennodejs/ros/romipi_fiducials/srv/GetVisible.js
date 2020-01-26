// Auto-generated. Do not edit!

// (in-package romipi_fiducials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let romipi_msgs = _finder('romipi_msgs');

//-----------------------------------------------------------

class GetVisibleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVisibleRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVisibleRequest
    let len;
    let data = new GetVisibleRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'romipi_fiducials/GetVisibleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetVisibleRequest(null);
    return resolved;
    }
};

class GetVisibleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.visible_robots = null;
    }
    else {
      if (initObj.hasOwnProperty('visible_robots')) {
        this.visible_robots = initObj.visible_robots
      }
      else {
        this.visible_robots = new romipi_msgs.msg.NameList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVisibleResponse
    // Serialize message field [visible_robots]
    bufferOffset = romipi_msgs.msg.NameList.serialize(obj.visible_robots, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVisibleResponse
    let len;
    let data = new GetVisibleResponse(null);
    // Deserialize message field [visible_robots]
    data.visible_robots = romipi_msgs.msg.NameList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += romipi_msgs.msg.NameList.getMessageSize(object.visible_robots);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'romipi_fiducials/GetVisibleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f1d9a0bc9140638857d0d5a5f8f9d13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    romipi_msgs/NameList visible_robots
    
    
    
    ================================================================================
    MSG: romipi_msgs/NameList
    # list of robot name strings
    string[] names
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetVisibleResponse(null);
    if (msg.visible_robots !== undefined) {
      resolved.visible_robots = romipi_msgs.msg.NameList.Resolve(msg.visible_robots)
    }
    else {
      resolved.visible_robots = new romipi_msgs.msg.NameList()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetVisibleRequest,
  Response: GetVisibleResponse,
  md5sum() { return '2f1d9a0bc9140638857d0d5a5f8f9d13'; },
  datatype() { return 'romipi_fiducials/GetVisible'; }
};
