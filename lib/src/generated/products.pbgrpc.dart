//
//  Generated code. Do not modify.
//  source: products.proto
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

import 'products.pb.dart' as $0;

export 'products.pb.dart';

@$pb.GrpcServiceName('products.ProductService')
class ProductServiceClient extends $grpc.Client {
  static final _$getProducts = $grpc.ClientMethod<$0.RequestProducts, $0.ProductList>(
      '/products.ProductService/GetProducts',
      ($0.RequestProducts value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProductList.fromBuffer(value));

  ProductServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ProductList> getProducts($0.RequestProducts request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProducts, request, options: options);
  }
}

@$pb.GrpcServiceName('products.ProductService')
abstract class ProductServiceBase extends $grpc.Service {
  $core.String get $name => 'products.ProductService';

  ProductServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RequestProducts, $0.ProductList>(
        'GetProducts',
        getProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestProducts.fromBuffer(value),
        ($0.ProductList value) => value.writeToBuffer()));
  }

  $async.Future<$0.ProductList> getProducts_Pre($grpc.ServiceCall call, $async.Future<$0.RequestProducts> request) async {
    return getProducts(call, await request);
  }

  $async.Future<$0.ProductList> getProducts($grpc.ServiceCall call, $0.RequestProducts request);
}
