import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/tabs/Home.dart';

class ProductDetail extends StatefulWidget {
  final Map arguments;
  // final String product_detail_name;
  // final String product_detail_image;
  // final int product_detail_old_price;
  // final int product_detail_price;

  ProductDetail({super.key,
    required this.arguments,
    // required this.product_detail_name,
    // required this.product_detail_image,
    // required this.product_detail_old_price,
    // required this.product_detail_price,
  });
  
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation:0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
          child: Text('商品详情'),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,),
          onPressed:(){}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),
          onPressed:(){}),
        ],
      ),
      // ${arguments['id']}
      body:ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                // width: 100%,
                child: Image.network(widget.arguments['product_detail_image'],),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.arguments['product_detail_name'],
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                  title: Row(
                    children:<Widget>[
                      Expanded(
                        child: Text(("\$${widget.arguments['product_detail_old_price']}").toString(),
                        style: TextStyle(color: Colors.grey,decoration:TextDecoration.lineThrough)),
                      ),
                      Expanded(
                        child: Text(("\$${widget.arguments['product_detail_price']}").toString(),
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title:Text('尺码'),
                      content: Text('选择尺码'),
                      actions: <Widget>[
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: Text('关闭'),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                   children: <Widget>[
                    Expanded(child: Text("Size")),
                    Expanded( child: Icon(Icons.arrow_drop_down) ),
                   ],
                ), 
                )
              ),
               //  -------the color button -------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                   children: <Widget>[
                    Expanded(child: Text("Color")),
                    Expanded( child: Icon(Icons.arrow_drop_down) ),
                   ],
                ), 
                )
              ),
              //  -------the size button -------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                   children: <Widget>[
                    Expanded(child: Text("Qty")),
                    Expanded( child: Icon(Icons.arrow_drop_down) ),
                   ],
                ), 
                )
              ),
            ],
          ),

          // ---- the second buttons
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: Text('Buy now'),
                )
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('商品详情'),
            subtitle:Text("ajsfjagfj就啊放假啊帅哥发技术规范"),
          )
        ],
      )
    );
  }
}

// 详情


