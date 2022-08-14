#include "ros/ros.h"
#include "plumbing_pub_sub/Person.h"

/* 
    Publication function:(Required: Public information about a person repeatedly.)
    1. include head files;
        #include "plumbing_pub_sub/Person.h"
    2. initial ROS node;
    3. Creat node handle;
    4. Creat subscribtion object;
    5. Write subscribtion logic and subscribe data.  
    6. spin() function
 */


void prosmsgs(const plumbing_pub_sub::Person::ConstPtr &person){
    //recieve and process subscribed data via "msg"
    ROS_INFO("Person Info. subscribed by subscriber_test:%s, %d, %.2f", person->name.c_str());
} 

int main(int argc, char *argv[])
{
    ROS_INFO("Subscriber function");
    // 2. initial ROS node;
    ros::init(argc, argv, "listener_person");
    // 3. Creat node handle;
    ros::NodeHandle nh;
    // 4. Creat subscribtion object;
    ros::Subscriber sub = nh.subscribe("person_msgs", 10, prosmsgs);
    // 5. Write subscribtion logic and subscribe data.  
    // 6. spin() function for callback function
    ros::spin();
    return 0;
}
