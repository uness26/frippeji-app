import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body:
      Padding(
        padding: EdgeInsets.all(70.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 78),
            Text(
              'VIEW PRODUCTS',
              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Roboto',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 100),
            Image.asset(
              'assets/images/gif.gif',
            ),
          ],
        ),
      ),
    );
  }
}

