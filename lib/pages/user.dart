import 'package:flutter/material.dart';
import 'package:flutter01/pages/category.dart';
 import './search.dart';
// 引入网格请求插件
import 'package:dio/dio.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
    Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                httpFunction1();
                // 路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SearchPage(arguments: {'title': '我搜索页面', 'aid': 2});
                }));
              },
              child: Text('搜索')
          ),
          ElevatedButton(
              onPressed: () {
                // 路由跳转
                Navigator.pushNamed(context, "/swiperView");
              },
              child: Text('轮播图')
          ),
           ElevatedButton(
              onPressed: () {
                // 路由跳转
                Navigator.pushNamed(context, "/loginPage");
              },
              child: Text('登陆')
          )
        ],
      ),
    );
  }
}

httpFunction1() async {
  var url = 'https://randomuser.me/api/?results=30';
  Response response;
  response = await dio.get(url);
  print(response.data.toString());
}
