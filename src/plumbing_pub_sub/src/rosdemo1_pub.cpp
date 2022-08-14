#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

/*
    Publication function:
    1. include head files;
        ROS string type ---> std_msgs/String.h
    2. initial ROS node;
    3. Creat node handle;
    4. Creat publication object;
    5. Write publication logic and publicate data.  
*/

int main(int argc, char *argv[])
{
    // 2. initial ROS node;
    ros::init(argc, argv, "publisher_test");
    
    // 3. Creat node handle;
    ros::NodeHandle nh;
    
    // 4. Creat publication object;
    ros::Publisher pub = nh.advertise<std_msgs::String>("msgs", 10);
    
    // 5. Write publication logic and publicate data.  
    //Requirements: 10HZ publishing frequency; adding count numbers after the string
    //Creat message to be published
    std_msgs::String msg;
    //Publishing frequency
    ros::Rate rate(10);
    //Counting number
    int count = 0; 
    //Write the loop for publication
    while (ros::ok())
    {
        count++;
        // add counting number
        std::stringstream ss;
        ss << "hello ---> " << count;
        msg.data = ss.str();
        pub.publish(msg);
        // Add log:
        ROS_INFO("The publishing data is:%s", ss.str().c_str());

        // 6. spin() function just in case
        ros::spinOnce();
        
        rate.sleep();
    }
    

    return 0;
}
