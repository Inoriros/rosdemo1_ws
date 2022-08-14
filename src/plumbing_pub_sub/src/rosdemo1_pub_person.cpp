#include "ros/ros.h"
#include "plumbing_pub_sub/Person.h"

/* 
    Publication function:(Required: Public information about a person repeatedly.)
    1. include head files;
        #include "plumbing_pub_sub/Person.h"
    2. initial ROS node;
    3. Creat node handle;
    4. Creat publication object;
    5. Write publication logic and publicate data.  
 */

int main(int argc, char *argv[])
{
    // 2. initial ROS node;
    ros::init(argc, argv, "talker_person");
    
    // 3. Creat node handle;
    ros::NodeHandle nh;
    
    // 4. Creat publication object;
    ros::Publisher pub = nh.advertise<plumbing_pub_sub::Person>("person_msgs", 10);
    
    // 5. Write publication logic and publicate data.  
    //Requirements: 10HZ publishing frequency; adding count numbers after the string
    //Creat message to be published
    plumbing_pub_sub::Person person;
    person.name = "Yi_Du";
    person.age = 23;
    person.height = 1.77;
    //Publishing frequency
    ros::Rate rate(1);
    //Write the loop for publication
    while (ros::ok())
    {
        // Add age
        person.age += 1;
        // Publish
        pub.publish(person);
        ROS_INFO("I am: %s, %d years old, %.2f meters", person.name.c_str(), person.age, person.height);

        
        rate.sleep();

        // 6. spin() function just in case
        ros::spinOnce();
    }
    
    return 0;
}
