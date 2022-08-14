#include "ros/ros.h"
#include "plumbing_server_client/IntsSum.h"

/* 
    Client Function: (submit two ints, then process the response from the Server)
        1. include head files
            #include "plumbing_server_client/IntsSum.h"
        2. initilaze ROS node
        3. creat the node handle
        4. creat a client object
        5. submit request and process response

    Additional function: (dynamic submision for parameters)
        1. format: rosrun xxxxx xxxxx 22 33
        2. When runing the node, request to get the parameters in the shell and put them into request
 */

int main(int argc, char *argv[])
{
    // ***For additional function***
    if(argc != 3){
        ROS_INFO("Numbers of parameters submitted is wrong.");
        return 1;
    }


    // 2. initilaze ROS node
    ros::init(argc, argv, "client_test");
    // 3. creat the node handle
    ros::NodeHandle nh;
    // 4. creat a client object
    ros::ServiceClient client = nh.serviceClient<plumbing_server_client::IntsSum>("IntsSum");
    // 5. submit request and process response
    //1) submit request
    plumbing_server_client::IntsSum ai;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);
    //2) process response
    bool flag = client.call(ai);
    if(flag){
        ROS_INFO("Response successfully!");
        //Get the summation result
        ROS_INFO("The summation result = %d", ai.response.sum);
    }else{
        ROS_INFO("Summation failed...");
    }


    return 0;
}
