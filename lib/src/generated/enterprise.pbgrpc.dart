//
//  Generated code. Do not modify.
//  source: enterprise.proto
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

import 'enterprise.pb.dart' as $0;

export 'enterprise.pb.dart';

@$pb.GrpcServiceName('enterprise.EnterpriseService')
class EnterpriseServiceClient extends $grpc.Client {
  static final _$getDocumentsType = $grpc.ClientMethod<$0.GlobalRequest, $0.ListDocumentTypeResponse>(
      '/enterprise.EnterpriseService/GetDocumentsType',
      ($0.GlobalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListDocumentTypeResponse.fromBuffer(value));
  static final _$getDataEnterprise = $grpc.ClientMethod<$0.EnterpriseRequest, $0.DataEnterpriseResponse>(
      '/enterprise.EnterpriseService/GetDataEnterprise',
      ($0.EnterpriseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DataEnterpriseResponse.fromBuffer(value));

  EnterpriseServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListDocumentTypeResponse> getDocumentsType($0.GlobalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDocumentsType, request, options: options);
  }

  $grpc.ResponseFuture<$0.DataEnterpriseResponse> getDataEnterprise($0.EnterpriseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDataEnterprise, request, options: options);
  }
}

@$pb.GrpcServiceName('enterprise.EnterpriseService')
abstract class EnterpriseServiceBase extends $grpc.Service {
  $core.String get $name => 'enterprise.EnterpriseService';

  EnterpriseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GlobalRequest, $0.ListDocumentTypeResponse>(
        'GetDocumentsType',
        getDocumentsType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GlobalRequest.fromBuffer(value),
        ($0.ListDocumentTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnterpriseRequest, $0.DataEnterpriseResponse>(
        'GetDataEnterprise',
        getDataEnterprise_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EnterpriseRequest.fromBuffer(value),
        ($0.DataEnterpriseResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListDocumentTypeResponse> getDocumentsType_Pre($grpc.ServiceCall call, $async.Future<$0.GlobalRequest> request) async {
    return getDocumentsType(call, await request);
  }

  $async.Future<$0.DataEnterpriseResponse> getDataEnterprise_Pre($grpc.ServiceCall call, $async.Future<$0.EnterpriseRequest> request) async {
    return getDataEnterprise(call, await request);
  }

  $async.Future<$0.ListDocumentTypeResponse> getDocumentsType($grpc.ServiceCall call, $0.GlobalRequest request);
  $async.Future<$0.DataEnterpriseResponse> getDataEnterprise($grpc.ServiceCall call, $0.EnterpriseRequest request);
}
