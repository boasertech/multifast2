//
//  Generated code. Do not modify.
//  source: client.proto
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

import 'client.pb.dart' as $0;

export 'client.pb.dart';

@$pb.GrpcServiceName('client.ClientService')
class ClientServiceClient extends $grpc.Client {
  static final _$consultDocument = $grpc.ClientMethod<$0.DocumentRequest, $0.OneOfDocumentResponse>(
      '/client.ClientService/ConsultDocument',
      ($0.DocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OneOfDocumentResponse.fromBuffer(value));

  ClientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.OneOfDocumentResponse> consultDocument($0.DocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$consultDocument, request, options: options);
  }
}

@$pb.GrpcServiceName('client.ClientService')
abstract class ClientServiceBase extends $grpc.Service {
  $core.String get $name => 'client.ClientService';

  ClientServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DocumentRequest, $0.OneOfDocumentResponse>(
        'ConsultDocument',
        consultDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DocumentRequest.fromBuffer(value),
        ($0.OneOfDocumentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.OneOfDocumentResponse> consultDocument_Pre($grpc.ServiceCall call, $async.Future<$0.DocumentRequest> request) async {
    return consultDocument(call, await request);
  }

  $async.Future<$0.OneOfDocumentResponse> consultDocument($grpc.ServiceCall call, $0.DocumentRequest request);
}
