#include "ros/ros.h"
#include "plumbing_server_client/IntsSum.h"

/* 
    Server Function: (recieve data submitted by the client, then operate and response)
        1. include head files
            #include "plumbing_server_client/IntsSum.h"
        2. initilaze ROS node
        3. creat the node handle
        4. creat a server object
        5. process request and response
        6. spin() just in case
 */


bool prosNums(plumbing_server_client::IntsSum::Request &request,
              plumbing_server_client::IntsSum::Response &response){
    //1) process request
    int num1 = request.num1;
    int num2 = request.num2;
    ROS_INFO("The request data recieved: num1 = %d, numw2 = %d", num1, num2);

    //2) response
    int sum = num1 + num2;
    response.sum = sum;
    ROS_INFO("The summation result is: sum = %d", sum);

    return true;
}

int main(int argc, char *argv[])
{
    // 2. initilaze ROS node
    ros::init(argc, argv, "server_test"); //make sure the name of the server is unique
    // 3. creat the node handle
    ros::NodeHandle nh;
    // 4. creat a server object
    ros::ServiceServer server = nh.advertiseService("IntsSum", prosNums);
    ROS_INFO("The Server is working....");
    // 5. process request and response
    // 6. spin() just in case
    ros::spin();
    return 0;
}
