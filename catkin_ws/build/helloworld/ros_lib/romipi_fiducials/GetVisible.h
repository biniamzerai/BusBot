#ifndef _ROS_SERVICE_GetVisible_h
#define _ROS_SERVICE_GetVisible_h
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "romipi_msgs/NameList.h"

namespace romipi_fiducials
{

static const char GETVISIBLE[] = "romipi_fiducials/GetVisible";

  class GetVisibleRequest : public ros::Msg
  {
    public:

    GetVisibleRequest()
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

    const char * getType(){ return GETVISIBLE; };
    const char * getMD5(){ return "d41d8cd98f00b204e9800998ecf8427e"; };

  };

  class GetVisibleResponse : public ros::Msg
  {
    public:
      typedef romipi_msgs::NameList _visible_robots_type;
      _visible_robots_type visible_robots;

    GetVisibleResponse():
      visible_robots()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->visible_robots.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->visible_robots.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return GETVISIBLE; };
    const char * getMD5(){ return "2f1d9a0bc9140638857d0d5a5f8f9d13"; };

  };

  class GetVisible {
    public:
    typedef GetVisibleRequest Request;
    typedef GetVisibleResponse Response;
  };

}
#endif
