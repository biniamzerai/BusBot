#ifndef _ROS_romipi_msgs_RomiPose_h
#define _ROS_romipi_msgs_RomiPose_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "geometry_msgs/PoseStamped.h"

namespace romipi_msgs
{

  class RomiPose : public ros::Msg
  {
    public:
      typedef const char* _observer_name_type;
      _observer_name_type observer_name;
      typedef const char* _target_name_type;
      _target_name_type target_name;
      typedef geometry_msgs::PoseStamped _pose_type;
      _pose_type pose;

    RomiPose():
      observer_name(""),
      target_name(""),
      pose()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_observer_name = strlen(this->observer_name);
      varToArr(outbuffer + offset, length_observer_name);
      offset += 4;
      memcpy(outbuffer + offset, this->observer_name, length_observer_name);
      offset += length_observer_name;
      uint32_t length_target_name = strlen(this->target_name);
      varToArr(outbuffer + offset, length_target_name);
      offset += 4;
      memcpy(outbuffer + offset, this->target_name, length_target_name);
      offset += length_target_name;
      offset += this->pose.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_observer_name;
      arrToVar(length_observer_name, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_observer_name; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_observer_name-1]=0;
      this->observer_name = (char *)(inbuffer + offset-1);
      offset += length_observer_name;
      uint32_t length_target_name;
      arrToVar(length_target_name, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_target_name; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_target_name-1]=0;
      this->target_name = (char *)(inbuffer + offset-1);
      offset += length_target_name;
      offset += this->pose.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "romipi_msgs/RomiPose"; };
    const char * getMD5(){ return "3d8b91b3b0ff7649c81277385280f189"; };

  };

}
#endif