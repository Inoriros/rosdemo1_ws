// 1. include the head file of ros
#include "ros/ros.h"

// 2. write main function
int main(int argc, char *argv[])
{
    // Resolve Chinese code unprintable problem
    setlocale(LC_ALL, "");

    // Print hello
    ros::init(argc, argv, "hello_cpp");
    ROS_INFO("hello, 哈哈哈");

    return 0;
}
