import 'package:flutter/material.dart';
class CartProducts extends StatefulWidget {
  CartProducts({super.key});

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
    List<Map>productList = [
    {
      "name":'牛仔裤蓝色',
      "image":'https://img.alicdn.com/imgextra/i3/47716052/O1CN01THlzcF1uZrbgNAyO8_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":'180',
      "price":'100',
      "color":"blue",
      "size":'8',
      "quantity":1,
    },
    {
      "name":'亮色卫衣',
      "image":'https://img.alicdn.com/imgextra/i3/113743549/O1CN011DpioR1c5UH126lDd_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":'140',
      "price":'75',
      "size":'5',
      "color":"Red",
      "quantity":1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context,index){
        return SingCartproduct(
          cartName: productList[index]["name"], 
          cartImage: productList[index]["image"], 
          cartPrice: productList[index]["price"], 
          cartSize: productList[index]["size"],
          cartColor: productList[index]["color"],
          cartGty: productList[index]["quantity"]);
      });
  }
}

// 单个商品列表
class SingCartproduct extends StatelessWidget {
  final cartName;
  final cartImage;
  final cartPrice;
  final cartSize;
  final cartColor;
  final cartGty;

  const SingCartproduct({super.key,
    @required this.cartName,
    @required this.cartImage,
    @required this.cartPrice,
    @required this.cartSize,
    @required this.cartColor,
    @required this.cartGty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(cartImage,width:100.0,height:80.0),
        title:Text(cartName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(cartSize,style: TextStyle(color: Colors.red),),
                ),
                // ====color=====
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cartColor,style: TextStyle(color: Colors.red)),
                ),
              ],
            ),

            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cartPrice}",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            // //Text("$cartGty"),
            // Text("1"),
            //IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
      ),
    );
  }
}
