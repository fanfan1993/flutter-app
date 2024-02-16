import 'package:flutter/material.dart';
import '../api/home.dart';
import '../widget/home_item.dart';


class MessagePage extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;
  const MessagePage({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
       return Container(
      child: Column(
        children: [
          if (showTitle)
            Container(
              padding: EdgeInsets.only(left: 7),
              alignment: Alignment.centerLeft,
              child: Text(
                '最新资讯',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
          Column(
            // 所以在这里传入一个 map 值的 item 列表
            children: dataList.map((item) => ItemWidget(data: item)).toList(),
          )
        ],
      ),
    );
  }
}

// 消息页面
// MessageItem("http://doubibiji.com/open-assets/img/pujing.jpg", "普京", "你怎么知道的"),

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