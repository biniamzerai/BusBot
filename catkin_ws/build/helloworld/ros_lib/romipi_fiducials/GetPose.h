#ifndef _ROS_SERVICE_GetPose_h
#define _ROS_SERVICE_GetPose_h
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "geometry_msgs/PoseStamped.h"

namespace romipi_fiducials
{

static const char GETPOSE[] = "romipi_fiducials/GetPose";

  class GetPoseRequest : public ros::Msg
  {
    public:
      typedef const char* _name_type;
      _name_type name;

    GetPoseRequest():
      name("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_name = strlen(this->name);
      varToArr(outbuffer + offset, length_name);
      offset += 4;
      memcpy(outbuffer + offset, this->name, length_name);
      offset += length_name;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_name;
      arrToVar(length_name, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_name; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_name-1]=0;
      this->name = (char *)(inbuffer + offset-1);
      offset += length_name;
     return offset;
    }

    const char * getType(){ return GETPOSE; };
    const char * getMD5(){ return "c1f3d28f1b044c871e6eff2e9fc3c667"; };

  };

  class GetPoseResponse : public ros::Msg
  {
    public:
      typedef bool _found_type;
      _found_type found;
      typedef geometry_msgs::PoseStamped _pose_type;
      _pose_type pose;

    GetPoseResponse():
      found(0),
      pose()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_found;
      u_found.real = this->found;
      *(outbuffer + offset + 0) = (u_found.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->found);
      offset += this->pose.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_found;
      u_found.base = 0;
      u_found.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->found = u_found.real;
      offset += sizeof(this->found);
      offset += this->pose.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return GETPOSE; };
    const char * getMD5(){ return "3b318fb4681b460e023abdf197c698f4"; };

  };

  class GetPose {
    public:
    typedef GetPoseRequest Request;
    typedef GetPoseResponse Response;
  };

}
#endif
