import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/category/electronics.png',
            imageCaption: 'Electronics',
          ),
          Category(imageLocation: 'assets/category/homeappliances.png', imageCaption: 'Home Appliances',),
          Category(imageLocation: 'assets/category/jewellery.png', imageCaption: 'Jewellery',),
          Category(imageLocation: 'assets/category/manfashion.png', imageCaption: 'Men\'s Fashion',),
          Category(imageLocation: 'assets/category/shoes.png', imageCaption: 'Shoe',),
          Category(imageLocation: 'assets/category/sunglass.png', imageCaption: 'Sun Glass',),
          Category(imageLocation: 'assets/category/watch.png', imageCaption: 'Watch',),
          Category(imageLocation: 'assets/category/womenfashion.png', imageCaption: 'Women\'s Fashion',),
          
                      
                  
          
                  ],
                ),
              );
            }
          }
          
class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap:(){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(imageLocation,
            width:100.0,
            height:80.0,
            ),
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(imageCaption, style:TextStyle(color: Colors.redAccent, fontSize:14.0),),
            ),
          ),
        ),
      ),
    );
  }

            
}