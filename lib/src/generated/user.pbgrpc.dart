//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$updateUser = $grpc.ClientMethod<$0.UserUpdateRequest, $0.OneOfUserUpdateResponse>(
      '/user.UserService/UpdateUser',
      ($0.UserUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OneOfUserUpdateResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.OneOfUserUpdateResponse> updateUser($0.UserUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserUpdateRequest, $0.OneOfUserUpdateResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserUpdateRequest.fromBuffer(value),
        ($0.OneOfUserUpdateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.OneOfUserUpdateResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$0.UserUpdateRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.OneOfUserUpdateResponse> updateUser($grpc.ServiceCall call, $0.UserUpdateRequest request);
}
