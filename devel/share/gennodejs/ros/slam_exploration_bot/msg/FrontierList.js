// Auto-generated. Do not edit!

// (in-package slam_exploration_bot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Frontier = require('./Frontier.js');

//-----------------------------------------------------------

class FrontierList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontiers = null;
    }
    else {
      if (initObj.hasOwnProperty('frontiers')) {
        this.frontiers = initObj.frontiers
      }
      else {
        this.frontiers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrontierList
    // Serialize message field [frontiers]
    // Serialize the length for message field [frontiers]
    bufferOffset = _serializer.uint32(obj.frontiers.length, buffer, bufferOffset);
    obj.frontiers.forEach((val) => {
      bufferOffset = Frontier.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrontierList
    let len;
    let data = new FrontierList(null);
    // Deserialize message field [frontiers]
    // Deserialize array length for message field [frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frontiers[i] = Frontier.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.frontiers.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'slam_exploration_bot/FrontierList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88ec557839bec196cc2b3b90ef57f3e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    slam_exploration_bot/Frontier[] frontiers
    
    ================================================================================
    MSG: slam_exploration_bot/Frontier
    int32 size
    geometry_msgs/Point centroid
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrontierList(null);
    if (msg.frontiers !== undefined) {
      resolved.frontiers = new Array(msg.frontiers.length);
      for (let i = 0; i < resolved.frontiers.length; ++i) {
        resolved.frontiers[i] = Frontier.Resolve(msg.frontiers[i]);
      }
    }
    else {
      resolved.frontiers = []
    }

    return resolved;
    }
};

module.exports = FrontierList;
