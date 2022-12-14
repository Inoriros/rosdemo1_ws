// Generated by gencpp from file plumbing_server_client/IntsSum.msg
// DO NOT EDIT!


#ifndef PLUMBING_SERVER_CLIENT_MESSAGE_INTSSUM_H
#define PLUMBING_SERVER_CLIENT_MESSAGE_INTSSUM_H

#include <ros/service_traits.h>


#include <plumbing_server_client/IntsSumRequest.h>
#include <plumbing_server_client/IntsSumResponse.h>


namespace plumbing_server_client
{

struct IntsSum
{

typedef IntsSumRequest Request;
typedef IntsSumResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IntsSum
} // namespace plumbing_server_client


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::plumbing_server_client::IntsSum > {
  static const char* value()
  {
    return "4781436a0c2affec8025955a6041e481";
  }

  static const char* value(const ::plumbing_server_client::IntsSum&) { return value(); }
};

template<>
struct DataType< ::plumbing_server_client::IntsSum > {
  static const char* value()
  {
    return "plumbing_server_client/IntsSum";
  }

  static const char* value(const ::plumbing_server_client::IntsSum&) { return value(); }
};


// service_traits::MD5Sum< ::plumbing_server_client::IntsSumRequest> should match
// service_traits::MD5Sum< ::plumbing_server_client::IntsSum >
template<>
struct MD5Sum< ::plumbing_server_client::IntsSumRequest>
{
  static const char* value()
  {
    return MD5Sum< ::plumbing_server_client::IntsSum >::value();
  }
  static const char* value(const ::plumbing_server_client::IntsSumRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::plumbing_server_client::IntsSumRequest> should match
// service_traits::DataType< ::plumbing_server_client::IntsSum >
template<>
struct DataType< ::plumbing_server_client::IntsSumRequest>
{
  static const char* value()
  {
    return DataType< ::plumbing_server_client::IntsSum >::value();
  }
  static const char* value(const ::plumbing_server_client::IntsSumRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::plumbing_server_client::IntsSumResponse> should match
// service_traits::MD5Sum< ::plumbing_server_client::IntsSum >
template<>
struct MD5Sum< ::plumbing_server_client::IntsSumResponse>
{
  static const char* value()
  {
    return MD5Sum< ::plumbing_server_client::IntsSum >::value();
  }
  static const char* value(const ::plumbing_server_client::IntsSumResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::plumbing_server_client::IntsSumResponse> should match
// service_traits::DataType< ::plumbing_server_client::IntsSum >
template<>
struct DataType< ::plumbing_server_client::IntsSumResponse>
{
  static const char* value()
  {
    return DataType< ::plumbing_server_client::IntsSum >::value();
  }
  static const char* value(const ::plumbing_server_client::IntsSumResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PLUMBING_SERVER_CLIENT_MESSAGE_INTSSUM_H
