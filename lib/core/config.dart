import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:multifast/utils/talker_fast.dart';
//import 'package:grpc/grpc_web.dart';

class Config {
  static const String version = '2.1.0';
  static const String urlAPI = "http://localhost:7011";
  static final talker = TalkerFast.talker;
  static String token = '';

  static void printDebug(Object object) {
    if (kDebugMode) {
      print(object);
    }
  }

  static CallOptions getCallOptions(String token) {
    return CallOptions(
      compression: GzipCodec(),
      timeout: Duration(seconds: 30),
      metadata: {'Authorization': 'Bearer $token'},
    );
  }

  /*static GrpcWebClientChannel getConnectionGrpc() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse('https://iginioggwp-001-site1.ltempurl.com'));
    return channel;
  }*/

  static ClientChannel getConnectionGrpc() {
    final channel = ClientChannel(
      '192.168.1.31',
      //'iginioggwp-001-site1.ltempurl.com',
      port: 443,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: [GzipCodec()]),
      ),
    );
    return channel;
  }
}

class AuthInterceptor extends ClientInterceptor {
  static const List<String> excludedMethods = [
    '/auth.AuthService/Login',
  ];

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    if (excludedMethods.contains(method.path)) {
      // Si el método está en la lista de excluidos, se usa CallOptions sin token
      return invoker(method, request, options);
    }

    // Si no está excluido, se agrega el token
    final newOptions = options.mergedWith(
      CallOptions(metadata: {'Authorization': 'Bearer ${Config.token}'}),
    );
    return invoker(method, request, newOptions);
  }
}
