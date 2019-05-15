import 'package:ecommerce/cat/horizontallist.dart';
import 'package:ecommerce/products/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyHome());

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Widget imageCarousel= Container(
    height: 225.0,
    child: Carousel(
      overlayShadow: false,
      borderRadius: true,
      boxFit: BoxFit.cover,
      autoplay: true,
      dotSize: 5.0,
      indicatorBgPadding: 9.0,
      images: [
        new AssetImage('assets/slider/slider1.jpg'),
        new AssetImage('assets/slider/slider2.jpg'),
        new AssetImage('assets/slider/slider3.jpg'),
        new AssetImage('assets/slider/slider4.jpg'),
        new AssetImage('assets/slider/slider5.jpg'),
        new AssetImage('assets/slider/slider6.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1500),
    ),
  );
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Braces e-Commerce'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search,color:Colors.white,),
            onPressed: null,
            ),
            IconButton(icon: Icon(Icons.shopping_basket,color:Colors.white),
            onPressed: null,
            // (){
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       //builder: (BuildContext context)=> Cart(),
            //   ),
            //   );
            // },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 5.0,),
            imageCarousel,
            Padding(padding: const EdgeInsets.only(top: 8.0, left: 8.0,),
            child: Text('Popular Categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.purpleAccent),),
            ),

           HorizontalList(),

            Padding(padding: const EdgeInsets.only(top: 8.0, left: 8.0,),
            child: Text('Popular Products', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.purpleAccent),),
            ),

            Container(
              height: 400.0,
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}