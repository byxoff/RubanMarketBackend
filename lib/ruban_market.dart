import 'dart:async';
import 'dart:io';
import 'package:angel3_framework/angel3_framework.dart';
import 'package:angel3_framework/http.dart';
import 'package:file/local.dart';
import 'src/config/config.dart' as configuration;
import 'src/routes/routes.dart' as routes;
import 'src/services/services.dart' as services;
import 'api_setup.dart'; // Импортируйте ваш api_setup.dart

/// Configures the server instance.
Future configureServer(Angel app) async {
  // Grab a handle to the file system, so that we can do things like
  // serve static files.
  var fs = const LocalFileSystem();

  // Set up our application, using the plug-ins defined with this project.
  await app.configure(configuration.configureServer(fs));
  await app.configure(services.configureServer);
  await app.configure(routes.configureServer(fs));

}

void main() async {
  // Создайте экземпляр вашего приложения
  final app = Angel();

  // Вызовите функцию configureServer(app) для настройки вашего приложения
  await configureServer(app);

  // Запустите ваш сервер
  var server = await HttpServer.bind('127.0.0.1', 8181);
  var http = AngelHttp(app);
  await http.startServer('127.0.0.1', 8181);
}
