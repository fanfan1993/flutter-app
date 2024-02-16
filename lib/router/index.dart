import 'package:flutter/material.dart';
import '../pages/layout/tabs.dart';
import '../pages/search.dart';
import '../pages/message.dart';
import '../pages/swiperView.dart';
import '../pages/login.dart';
import '../pages/productDetail.dart';

// 1、定义Map类型的routes
final Map routes = {
  '/': (context) => const Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/message': (context) => const MessagePage(),
  '/swiperView': (context) => const SwiperView(),
  '/loginPage': (context) => const LoginPage(),
  '/productDetail': (context, {arguments}) => ProductDetail(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};