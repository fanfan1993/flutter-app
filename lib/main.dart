import 'package:flutter/material.dart';
// import 'pages/search.dart';

// 引入路由配置
import './router/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      // home: HomePage() //HomePage()
      initialRoute: "/",
      // onGenerateRoute处理
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Icon',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: addHomes());
  }
}

// 有状态的组件
class addHomes extends StatefulWidget {
  const addHomes({super.key});

  @override
  State<addHomes> createState() => _addHomesState();
}

class _addHomesState extends State<addHomes> {
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_numCount',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _numCount++;
                    });
                  },
                  child: const Text("增加"))
            ],
          ),
        ));
  }
}

// 消息页面
class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息'),
      ),
      body: ListView(
        children: [
          // MessageItem("http://doubibiji.com/open-assets/img/pujing.jpg", "普京", "你怎么知道的"),
          // MessageItem("http://doubibiji.com/open-assets/img/baideng.jpg", "拜登", "胡说，不是今天"),
        ],
      ),
    );
  }
}

// class MessageItem extends StatelessWidget {
  // final imageUrl;
  // final name;
  // final message;
  
  // const MessageItem (this.imageUrl, this.name , this.message, {super.key})

  // @override
  // Widget build(BuildContext context) {
  //  return Row(
  //    children: [
  //       Image.network(
  //         imageUrl,
  //         width: 60,									// 设置图片尺寸
  //         height: 60,
  //       ),
  //       Column(
  //         children: [
  //           Text(
  //             name,
  //             style: const TextStyle(				// 设置字体样式
  //                 fontSize: 18
  //             ),
  //           ),
  //           Text(
  //             message,
  //             style: const TextStyle(
  //                 fontSize: 14
  //             ),
  //           )
  //         ],
  //       ),
  //     ],
  //  );
  // }
  // }