import 'dart:io';

main() {
  final env = Platform.environment;
  HttpServer.bind(env['OPENSHIFT_DART_IP'], int.parse(env['OPENSHIFT_DART_PORT'], onError: (_) => 8080)).then((server) {
    server.listen((HttpRequest request) {
      request.response.write('Hello, world');
      request.response.close();
    });
  });
}
