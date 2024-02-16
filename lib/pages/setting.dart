import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>  with SingleTickerProviderStateMixin{
late TabController _tabController;

  // 生命周期函数，当组件初始化就触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    // 监听_tabController的改变事件
    _tabController.addListener(() {
      if( _tabController.animation!.value == _tabController.index) {
        
      }
    });
  }
  // 销毁组件时候发生
  @override
  void dispose() {
    super.dispose();
    // 销毁_tabController
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            elevation: .5,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 35,
              child: TabBar(
                  labelStyle: TextStyle(fontSize: 14),
                  isScrollable: true,
                  controller: _tabController,
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  onTap: (index){
                   // print(index);
                  },
                  tabs: [
                    Tab(
                      child: Text("关注"),
                    ),
                    Tab(
                      child: Text("热门"),
                    ),
                    Tab(
                      child: Text("视频"),
                    ),
                    Tab(
                      child: Text("娱乐"),
                    ),
                    Tab(
                      child: Text("篮球"),
                    ),
                    Tab(
                      child: Text("杭州"),
                    ),
                    Tab(
                      child: Text("天气"),
                    ),
                    Tab(
                      child: Text("新闻"),
                    ),
                  ]),
            ),
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          ListView(
            children: [
              ListTile(
                title:   Text('我是关注'),
              ),
              ListTile(
                title:   Text('我是关注'),
              ),
              ListTile(
                title:   Text('我是关注'),
              ),
              ListTile(
                title:   Text('我是关注'),
              )
            ],
          ),
          Text('我是热门'),
          Text('视频'),
          Text('娱乐'),
          Text('篮球'),
          Text('杭州'),
          Text('天气'),
          Text('新闻'),
        ]));
  }
}