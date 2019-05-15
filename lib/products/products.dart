import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList=[
    {
      "name":"Camera",
      "image":"assets/products/camera1.jpg",
      "price":"100"
    },
    {
      "name":"Home Appliances",
      "image":"assets/products/homeappliance1.jpg",
      "price":"500"
    },
    {
      "name":"Sun Glass",
      "image":"assets/products/glass1.jpg",
      "price":"80"
    },
    {
      "name":"Men's Fashion",
      "image":"assets/products/man1.jpg",
      "price":"100"
    },
    {
      "name":"Jewellery",
      "image":"assets/products/jewellery1.jpg",
      "price":"160"
    },
    {
      "name":"Mobile",
      "image":"assets/products/mobile1.jpg",
      "price":"400"
    },
    {
      "name":"Shoe",
      "image":"assets/products/shoe1.jpg",
      "price":"280"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          prodName: productList[index]['name'],
          prodPrice: productList[index]['price'],
          prodImage: productList[index]['image'],
        );
              },
            );
          }
        }
        
class SingleProduct extends StatelessWidget {
final prodName;
final prodImage;
final prodPrice;

SingleProduct({
  this.prodName,
  this.prodImage,
  this.prodPrice
});



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.only(left: 8.0, top: 8.0),
    child: Card(
      elevation: 6.0,
      color: Colors.cyanAccent,
      child: Hero(
        tag:prodName,
        child: Material(
          child: InkWell(
            onTap: (){

            },
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(prodName, style:TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("\$$prodPrice", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(prodImage, fit:BoxFit.cover),
            ),
          ),
          ),
        ),
      ),
    ),
    );
  }
}