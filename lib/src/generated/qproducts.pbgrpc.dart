//
//  Generated code. Do not modify.
//  source: qproducts.proto
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

import 'qproducts.pb.dart' as $0;

export 'qproducts.pb.dart';

@$pb.GrpcServiceName('qproducts.QProductService')
class QProductServiceClient extends $grpc.Client {
  static final _$getQProducts = $grpc.ClientMethod<$0.QProductRequest, $0.OneOfQProductsResponse>(
      '/qproducts.QProductService/GetQProducts',
      ($0.QProductRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OneOfQProductsResponse.fromBuffer(value));

  QProductServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.OneOfQProductsResponse> getQProducts($0.QProductRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQProducts, request, options: options);
  }
}

@$pb.GrpcServiceName('qproducts.QProductService')
abstract class QProductServiceBase extends $grpc.Service {
  $core.String get $name => 'qproducts.QProductService';

  QProductServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QProductRequest, $0.OneOfQProductsResponse>(
        'GetQProducts',
        getQProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QProductRequest.fromBuffer(value),
        ($0.OneOfQProductsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.OneOfQProductsResponse> getQProducts_Pre($grpc.ServiceCall call, $async.Future<$0.QProductRequest> request) async {
    return getQProducts(call, await request);
  }

  $async.Future<$0.OneOfQProductsResponse> getQProducts($grpc.ServiceCall call, $0.QProductRequest request);
}
