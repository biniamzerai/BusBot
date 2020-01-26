#ifndef _ROS_SERVICE_ResetVisible_h
#define _ROS_SERVICE_ResetVisible_h
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace romipi_fiducials
{

static const char RESETVISIBLE[] = "romipi_fiducials/ResetVisible";

  class ResetVisibleRequest : public ros::Msg
  {
    public:

    ResetVisibleRequest()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
     return offset;
    }

    const char * getType(){ return RESETVISIBLE; };
    const char * getMD5(){ return "d41d8cd98f00b204e9800998ecf8427e"; };

  };

  class ResetVisibleResponse : public ros::Msg
  {
    public:

    ResetVisibleResponse()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
     return offset;
    }

    const char * getType(){ return RESETVISIBLE; };
    const char * getMD5(){ return "d41d8cd98f00b204e9800998ecf8427e"; };

  };

  class ResetVisible {
    public:
    typedef ResetVisibleRequest Request;
    typedef ResetVisibleResponse Response;
  };

}
#endif
