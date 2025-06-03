// Auto-generated. Do not edit!

// (in-package slam_exploration_bot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Frontier {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.centroid = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frontier
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.centroid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frontier
    let len;
    let data = new Frontier(null);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'slam_exploration_bot/Frontier';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2457d72f7a7c5658c06f2ff1084acb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Frontier(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Point.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Frontier;
