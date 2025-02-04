//
//  Generated code. Do not modify.
//  source: chat.proto
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

import 'chat.pb.dart' as $0;

export 'chat.pb.dart';

@$pb.GrpcServiceName('chat.ChatService')
class ChatServiceClient extends $grpc.Client {
  static final _$sendMessage = $grpc.ClientMethod<$0.MessageRequest, $0.MessageReply>(
      '/chat.ChatService/SendMessage',
      ($0.MessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MessageReply.fromBuffer(value));
  static final _$streamMessages = $grpc.ClientMethod<$0.Empty, $0.MessageReply>(
      '/chat.ChatService/StreamMessages',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MessageReply.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MessageReply> sendMessage($0.MessageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseStream<$0.MessageReply> streamMessages($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamMessages, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('chat.ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chat.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MessageRequest, $0.MessageReply>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MessageRequest.fromBuffer(value),
        ($0.MessageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.MessageReply>(
        'StreamMessages',
        streamMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.MessageReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.MessageReply> sendMessage_Pre($grpc.ServiceCall call, $async.Future<$0.MessageRequest> request) async {
    return sendMessage(call, await request);
  }

  $async.Stream<$0.MessageReply> streamMessages_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* streamMessages(call, await request);
  }

  $async.Future<$0.MessageReply> sendMessage($grpc.ServiceCall call, $0.MessageRequest request);
  $async.Stream<$0.MessageReply> streamMessages($grpc.ServiceCall call, $0.Empty request);
}
