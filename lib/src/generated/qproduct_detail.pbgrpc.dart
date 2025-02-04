//
//  Generated code. Do not modify.
//  source: qproduct_detail.proto
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

import 'qproduct_detail.pb.dart' as $0;

export 'qproduct_detail.pb.dart';

@$pb.GrpcServiceName('qproduct_detail.QProductDetailService')
class QProductDetailServiceClient extends $grpc.Client {
  static final _$getQProductDetail = $grpc.ClientMethod<$0.QProductDetailRequest, $0.OneOfQProductDetailResponse>(
      '/qproduct_detail.QProductDetailService/GetQProductDetail',
      ($0.QProductDetailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OneOfQProductDetailResponse.fromBuffer(value));

  QProductDetailServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.OneOfQProductDetailResponse> getQProductDetail($0.QProductDetailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQProductDetail, request, options: options);
  }
}

@$pb.GrpcServiceName('qproduct_detail.QProductDetailService')
abstract class QProductDetailServiceBase extends $grpc.Service {
  $core.String get $name => 'qproduct_detail.QProductDetailService';

  QProductDetailServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QProductDetailRequest, $0.OneOfQProductDetailResponse>(
        'GetQProductDetail',
        getQProductDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QProductDetailRequest.fromBuffer(value),
        ($0.OneOfQProductDetailResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.OneOfQProductDetailResponse> getQProductDetail_Pre($grpc.ServiceCall call, $async.Future<$0.QProductDetailRequest> request) async {
    return getQProductDetail(call, await request);
  }

  $async.Future<$0.OneOfQProductDetailResponse> getQProductDetail($grpc.ServiceCall call, $0.QProductDetailRequest request);
}
