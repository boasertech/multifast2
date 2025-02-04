import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:multifast/utils/talker_fast.dart';
//import 'package:grpc/grpc_web.dart';

class Config {
  static const String version = '2.1.0';
  static const String urlAPI = "http://localhost:7011";
  static final talker = TalkerFast.talker;

  static void printDebug(Object object) {
    if (kDebugMode) {
      print(object);
    }
  }

  /*static GrpcWebClientChannel getConnectionGrpc() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse('https://iginioggwp-001-site1.ltempurl.com'));
    return channel;
  }*/

  static ClientChannel getConnectionGrpc() {
    final channel = ClientChannel(
      '192.168.1.27',
      //'iginioggwp-001-site1.ltempurl.com',
      //port: 50051,
      port: 50051,
      options: ChannelOptions(
        credentials: ChannelCredentials.secure(),
        codecRegistry: CodecRegistry(codecs: [GzipCodec()])
      ),
    );
    return channel;
  }
}