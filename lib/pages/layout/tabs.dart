import 'package:flutter/material.dart';
import '../home.dart';
import '../category.dart';
import '../setting.dart';
import '../user.dart';
import '../message.dart';
import '../cart.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List<Widget> _page = [
    HomePage(),
    CartPage(),
    MessagePage(),
    CategoryPage(),
    // SettingPage(),
    UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Flutter APP'),
        backgroundColor: Colors.red,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white, // 设置标题文字颜色
          fontSize: 22, // 设置标题文字大小
          fontWeight: FontWeight.bold, // 设置标题文字的粗细
        ),
        actions: [
          // 右侧按钮，可以有多
          IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                 Navigator.pushNamed(context, "/search", arguments: {'title': '我搜索页面', 'aid': 2});
              }),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                // print('点击了更多按钮');
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CartPage()));
              })
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              // 头部的样式
              children: [
                Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                    accountName: Text('小露露'),
                    accountEmail: Text('1784498906@qq.com'),
                    otherAccountsPictures: [
                      Image.network(
                          "https://www.itying.com/images/flutter/1.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/2.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/3.png")
                    ],
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/2.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 60,),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('个人中心'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              //leading: Icon(Icons.settings),
              title: Text('系统设置'),
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(
      //   child: Text('右边侧边栏'),
      // ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, //选中的颜色
        // iconSize: 25,
        type: BottomNavigationBarType.fixed, //如果超过4个
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '购物车'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的')
        ],
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 这个是底部的圆卷加号的定位布局
    );
  }
}
