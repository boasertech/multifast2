//
//  Generated code. Do not modify.
//  source: quotation.proto
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

import 'quotation.pb.dart' as $0;

export 'quotation.pb.dart';

@$pb.GrpcServiceName('quotation.QuotationService')
class QuotationServiceClient extends $grpc.Client {
  static final _$registerQuotation = $grpc.ClientMethod<$0.QuotationRequest, $0.OneOfQuotationResponse>(
      '/quotation.QuotationService/RegisterQuotation',
      ($0.QuotationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OneOfQuotationResponse.fromBuffer(value));

  QuotationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.OneOfQuotationResponse> registerQuotation($0.QuotationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerQuotation, request, options: options);
  }
}

@$pb.GrpcServiceName('quotation.QuotationService')
abstract class QuotationServiceBase extends $grpc.Service {
  $core.String get $name => 'quotation.QuotationService';

  QuotationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QuotationRequest, $0.OneOfQuotationResponse>(
        'RegisterQuotation',
        registerQuotation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QuotationRequest.fromBuffer(value),
        ($0.OneOfQuotationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.OneOfQuotationResponse> registerQuotation_Pre($grpc.ServiceCall call, $async.Future<$0.QuotationRequest> request) async {
    return registerQuotation(call, await request);
  }

  $async.Future<$0.OneOfQuotationResponse> registerQuotation($grpc.ServiceCall call, $0.QuotationRequest request);
}
