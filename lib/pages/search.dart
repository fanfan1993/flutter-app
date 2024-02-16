import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  // final String title;
  // final int aid;
  final Map arguments;
  // const SearchPage({super.key, this.title= '搜索' , required this.aid});
  	// ---- 使用 arguments 接收参数
  const SearchPage({super.key, required this.arguments});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments['title']),
      ),
      body: Center(
        child: Text("搜索页面"),
      )
    );
  }
}