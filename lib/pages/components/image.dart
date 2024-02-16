import 'package:flutter/material.dart';
class imagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个程序图片"),
        ),
        body: Center(
          child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(color: Colors.lightBlue),
              child: Image.asset(
                'images/logo.png',
                fit: BoxFit.cover,
              )
              // Image.network(
              //     'https://wwww.itying.com/themes/itying/images/ionic4.png')
              //     ,
              ),
        ));
  }
}