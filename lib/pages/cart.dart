import 'package:flutter/material.dart';
import './components/cart_products.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text('购物车'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color:Colors.white), onPressed: (){}),
        ],
      ),
      
      body: CartProducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title:Text('Total'),
              subtitle: Text("\$234"),
            )),
            Expanded(
              child: MaterialButton(onPressed: (){},
              child: Text("去结算",style:TextStyle(color:Colors.white)),
              color: Colors.red,
              )
            )
          ]
        ),
      ),
    );
  }
}