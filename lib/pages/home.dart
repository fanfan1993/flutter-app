import 'package:flutter/material.dart';
import '../../tools/keepAliveWrapper.dart';
import './components/horizontal_listview.dart';
import './components/products.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// 图片
List<Image> imgsList = [
  //建立了一个图片数组
  new Image.network(
    "https://gw.alicdn.com/imgextra/i2/O1CN01nlPQ9s1y3aKUb5tDo_!!6000000006523-0-tps-800-450.jpg",
    fit: BoxFit.fill,
  ),
  new Image.network(
    "https://gw.alicdn.com/imgextra/i4/O1CN01ZaP2Or1ZzsLJJb4Wg_!!6000000003266-0-tps-800-450.jpg",
    fit: BoxFit.fill,
  ),
  new Image.network(
    "https://img.alicdn.com/tfs/TB1wOidVWL7gK0jSZFBXXXZZpXa-520-280.jpg",
    fit: BoxFit.fill,
  ),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget Image_Swiper = Container(
        child: AspectRatio(
      aspectRatio: 16 / 9,
      //height: 175,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          //条目构建函数传入了index,根据index索引到特定图片
          return imgsList[index];
        },
        itemCount: imgsList.length,
        loop: true,
        autoplay: true,
        pagination: new SwiperPagination(), //这些都是控件默认写好的,直接用
        control: new SwiperControl(),
      ),
    ));

    return Container(
      child: ListView(children: <Widget>[
      Image_Swiper,

      Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('分类'),
      ),
      HorizontalList(),

      Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('产品'),
      ),

      // Flexible(child: Products()),
      Container(
        height: 660.0,
        child: Products(),
      )
    ]));
  }
}
