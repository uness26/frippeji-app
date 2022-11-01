import 'package:flutter/material.dart';
import 'package:frippeji/Product_screen/Published.dart';
import 'package:frippeji/Product_screen/Unpublished.dart';
import 'package:frippeji/pannier/basket.dart';
import 'package:frippeji/wishlist/Empty.dart';
import 'package:frippeji/wishlist/full.dart';




class ProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Products List'),
          elevation:0,

          bottom: TabBar(
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Text('Published'),
                ),
                Tab(
                  child: Text('UnPublished'),
                ),
              ],
          ),
        ),
          drawer: Drawer(
            child: ListView(
              children: [
                SizedBox(height: 100),
                ListTile(
                  title: Text('Empty Wishlist'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistEmpty()))
                ),
                ListTile(
                  title: Text('Wishlist'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistFull()))
                ),
                ListTile(
                    title: Text('Basket'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Basket()))
                ),
              ],
            ),
          ),
          body: Container(
            color: Colors.amber,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(40.0),
                  topRight:Radius.circular(40.0),
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: TabBarView(
                children: [
                  PublishedProducts(),
                  UnPublishedProducts(),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
