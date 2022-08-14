#include "ros/ros.h"
#include "std_msgs/String.h"

/*
    Subscribe function:
    1. include head files;
        ROS string type ---> std_msgs/String.h
    2. initial ROS node;
    3. Creat node handle;
    4. Creat subscriber object;
    5. Write subscribing logic and process subscribed data.
    6. spin() function
*/

void prosmsgs(const std_msgs::String::ConstPtr &msg){
    //recieve and process subscribed data via "msg"
    ROS_INFO("Data subscribed by subscriber_test:%s", msg->data.c_str());
} 

int main(int argc, char *argv[])
{
    // 2. initial ROS node;
    ros::init(argc, argv, "subscriber_test");
    // 3. Creat node handle;
    ros::NodeHandle nh;
    // 4. Creat subscriber object;
    ros::Subscriber sub = nh.subscribe("msgs", 10, prosmsgs);
    // 5. Write subscribing logic and process subscribed data.  
    // 6. spin() function
    ros::spin();

    return 0;
}
 