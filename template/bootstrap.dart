import 'dart:io';

main() {
  final env = Platform.environment;
  HttpServer.bind(env['OPENSHIFT_DAPP_IP'], env['OPENSHIFT_DAPP_PORT']).then((server) {
    server.listen((HttpRequest request) {
      request.response.write('Hello, world');
      request.response.close();
    });
  });
}
