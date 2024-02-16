import 'package:flutter/material.dart';
// import '/pages/productDetail.dart';

class Products extends StatefulWidget {
  Products({super.key});

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  
  List<Map>productList = [
    {
      "name":'牛仔裤蓝色',
      "image":'https://img.alicdn.com/imgextra/i3/47716052/O1CN01THlzcF1uZrbgNAyO8_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":180,
      "price":100,
    },
    {
      "name":'亮色卫衣',
      "image":'https://img.alicdn.com/imgextra/i3/113743549/O1CN011DpioR1c5UH126lDd_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":140,
      "price":75,
    },
    {
      "name":'口红💄',
      "image":'https://img.alicdn.com/imgextra/i1/268800168/O1CN01BCuHNm1D6zAydhBLj_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":300,
      "price":160,
    },
    {
      "name":'包包',
      "image":'https://img.alicdn.com/imgextra/i1/122202091/O1CN01GLBU0w1RJinjuy28F_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":500,
      "price":390,
    },
    {
      "name":'卫衣',
      "image":'https://img.alicdn.com/imgextra/i2/26034965/O1CN01i86xsi1mY16LpJ7Fx_!!0-saturn_solar.jpg_260x260.jpg',
      "old_price":120,
      "price":85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
       itemCount:productList.length,
       gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
       ),
       itemBuilder: (BuildContext context, int index){
          return SingleProduct(
           product_name: productList[index]['name'],
           product_image: productList[index]['image'],
           product_old_price: productList[index]['old_price'],
           product_price: productList[index]['price'],
          );
       });
  }
}

class SingleProduct extends StatelessWidget {

  final String product_name;
  final String product_image;
  final int product_old_price;
  final int product_price;

  const SingleProduct({super.key,
    required this.product_name,
    required this.product_image,
    required this.product_old_price,
    required this.product_price,
  });

  get product_detail_image => null;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(onTap:(){
            print('跳转到详情页面');
            //路由跳转
            Navigator.pushNamed(context, '/productDetail',
            arguments: 
            {'product_detail_name':product_name,
            'product_detail_image':product_image,
            'product_detail_old_price':product_old_price,
            'product_detail_price':product_price});
        
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return  new ProductDetail(
            //     product_detail_name :product_name,
            //     product_detail_image:product_image,
            //     product_detail_old_price:product_old_price,
            //     product_detail_price:product_price
            //   );
            //  }));
          },
          child: GridTile(
              footer: Container(
                color: Colors.white70,
                child:Row(
                  children: <Widget>[
                    Expanded(
                      child:Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                       ),
                      Text("\$$product_price",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                  ],
                ),
                // child: ListTile(
                //   leading: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold),),
                //   title: Text("\$$product_price",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),),
                //   subtitle: Text("\$$product_old_price",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w800,decoration: TextDecoration.lineThrough),),
                // ),
              ),
              child: Image.network(product_image,
              fit:BoxFit.cover),
          )),
        ),
      ),
    );
  }
}