#! /usr/bin/env python

import rospy
from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse
from busbot_move_circle_class import MoveBusBot

def my_callback(request):
    rospy.loginfo("The Service move_busbot_in_circle has been called")
    movebusbot_object = MoveBusBot()
    movebusbot_object.move_busbot(request.duration)
    rospy.loginfo("Finished service move_busbot_in_circle")
    response = MyCustomServiceMessageResponse()
    response.success = True
    return response

rospy.init_node('service_move_busbot_in_circle_server')
my_service = rospy.Service('/move_busbot_in_circle', MyCustomServiceMessage , my_callback)
rospy.loginfo("Service /move_busbot_in_circle Ready")
rospy.spin()
