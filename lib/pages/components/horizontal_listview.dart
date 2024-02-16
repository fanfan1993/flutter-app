import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location:'https://img.alicdn.com/imgextra/i3/113743549/O1CN011DpioR1c5UH126lDd_!!0-saturn_solar.jpg_260x260.jpg',
            image_name:'卫衣'
          ),
          Category(
            image_location:'https://img.alicdn.com/imgextra/i4/55536378/O1CN01Q57g7i1wzAjx8pclU_!!0-saturn_solar.jpg_260x260.jpg',
            image_name:'包包'
          ),
          Category(
            image_location:'https://img.alicdn.com/imgextra/i2/97521525/O1CN01kIQx5X1N8UdjlWVye_!!0-saturn_solar.jpg_260x260.jpg',
            image_name:'袜子'
          ),
          Category(
            image_location:'https://img.alicdn.com/imgextra/i1/1354290164/O1CN013ZNXn41D59apEvBav_!!0-saturn_solar.jpg_260x260.jpg',
            image_name:'外套'
          ),
          Category(
            image_location:'https://img.alicdn.com/imgextra/i1/1154420016/O1CN01mip4LN1BzMyFG0tVC_!!0-saturn_solar.jpg_260x260.jpg',
            image_name:'口红'
          ),
           Category(
            image_location:'http://g.search.alicdn.com/img/i4/27705743/O1CN01OhkC5D1sILErnSskM_!!0-saturn_solar.jpg_260x260.jpg',
            image_name:'被套'
          ),
          //
          //
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_name;
  const Category({super.key, required this.image_location, required this.image_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title:Image.network(
              image_location,
               width: 100.0,
               height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_name),
            ),
          ),
        ),
      ),
    );
  }
}