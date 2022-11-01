import 'package:flutter/material.dart';
import 'package:frippeji/Product_screen/product_details.dart';

class UnPublishedProducts extends StatelessWidget {
  const UnPublishedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView( children: [
      Material(
        elevation: 10,
        child: ListTile(
          leading: Image.asset('assets/images/jean.jfif'),
          title: Text('Pontalon',textAlign: TextAlign.center),
          subtitle: Text('10 Dt'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()))
        ),
      ),
      SizedBox(height: 20),
      Material(
        elevation: 10,
        child: ListTile(
          leading: Image.asset('assets/images/basket.jpg'),
          title: Text('Air Force',textAlign: TextAlign.center),
          subtitle: Text('10 Dt'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()))

      ),
      ),
    ],
    );
  }
}

