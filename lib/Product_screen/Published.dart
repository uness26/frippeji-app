import 'package:flutter/material.dart';
import 'package:frippeji/Product_screen/product_details.dart';



class PublishedProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
              Material(
                elevation: 10,
                child: ListTile(
                  leading: Image.asset('assets/images/veste.jpg'),
                  title: Text('Veste',textAlign: TextAlign.center),
                  subtitle: Text('10 Dt'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()))
                ),
              ),
              SizedBox(height: 20),
              Material(
                elevation: 10,
                child: ListTile(
                  leading: Image.asset('assets/images/capuche.jpg'),
                  title: Text('Capuche',textAlign: TextAlign.center),
                  subtitle: Text('10 Dt'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()))
                ),
              ),
            ],
    );
  }
}
