import 'package:flutter/material.dart';
import '../widget/image.dart';
import '../widget/swiper.dart';

class SwiperView extends StatefulWidget {
  const SwiperView({super.key});

  @override
  State<SwiperView> createState() => _SwiperViewState();
}

class _SwiperViewState extends State<SwiperView> {
  List<String> list = [];

  @override
  void initState() {
    super.initState();
    // list = [
    //   ImagePage(src: 'https://www.itying.com/images/flutter/1.png'),
    //   ImagePage(src: 'https://www.itying.com/images/flutter/2.png'),
    //   ImagePage(src: 'https://www.itying.com/images/flutter/3.png'),
    // ];
    list = [
      'https://www.itying.com/images/flutter/1.png',
      'https://www.itying.com/images/flutter/2.png',
      'https://www.itying.com/images/flutter/3.png',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageSwiper'),
        ),
        body: ListView(
          children: [Swiper(list: list)],
        ));
  }
}
