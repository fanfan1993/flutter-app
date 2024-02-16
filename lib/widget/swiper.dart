import 'package:flutter/material.dart';
import '../widget/image.dart';

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<String> list;
  const Swiper(
      {super.key,
      this.height = 200,
      this.width = double.infinity,
      required this.list});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _currentIndex = 0;
  List<Widget> pageList = [];
  late PageController _pageController;
  // late Timer timer;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.list.length; i++) {
      pageList.add(ImagePage(
          width: widget.width, height: widget.height, src: widget.list[i]));
    }
    _pageController = PageController(initialPage: 0);

    // timer = Timer.periodic(Duration(seconds: 5),(t){
    // _pageController = animateToPage(initialPage: 0);
    // });

  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index % pageList.length;
                });
              },
              itemCount: 1000,
              itemBuilder: (context, index) {
                return pageList[index % pageList.length];
              })),
      Positioned(
        left: 0,
        right: 0,
        bottom: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.list.length, (index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                  shape: BoxShape.circle
                  //borderRadius: BorderRadius.circular(5)
                  ),
            );
          }).toList(),
        ),
      )
    ]);
  }
}
