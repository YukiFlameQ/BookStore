import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/book_detail/index.dart';
import 'package:flutter_application_1/pages/home/index.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/not_found.dart';
import 'package:flutter_application_1/pages/register.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String bookDetail = '/book/:bookId';

  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });

    static final Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RegisterPage();
  });

  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundPage();
  });

  static final Handler _bookDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return BookDetailPage(
      bookId: params['bookId']![0],
    );
  });

  static void configureRouters(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(bookDetail, handler: _bookDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
