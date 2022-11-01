import 'package:flutter/material.dart';

class WishlistFull extends StatefulWidget {

  @override
  _WishlistFullState createState() => _WishlistFullState();
}

class _WishlistFullState extends State<WishlistFull> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Text('WishList'),
            SizedBox(width: 10),
            Icon( Icons.favorite_border)
          ],
        ),
        
        backgroundColor: Colors.amber,
      ),
      body:
      Container(
        color: Colors.amber,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(40.0),
              topRight:Radius.circular(40.0),
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          child: ListView(

            children: [
              Stack(
                children : [
                 Container(
                   height: 80,
                   margin: EdgeInsets.only(right: 30.0, bottom: 0),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                    elevation: 10,
                    child: ListTile(
                        leading: Container(
                            height: 80,
                            child: Image.asset('assets/images/veste.jpg')),
                        title: Text('Veste',textAlign: TextAlign.center),
                        subtitle: Text('10 Dt'),
                    ),
                ),
                 ),
                  positionedRemove()
                ],

              ),
              SizedBox(height: 10),
              Stack(
                children : [
                 Container(
                   height: 80,
                   margin: EdgeInsets.only(right: 30.0, bottom: 0),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                    elevation: 10,
                    child: ListTile(
                        leading: Container(
                            height: 80,
                            child: Image.asset('assets/images/basket.jpg')),
                        title: Text('Air Force',textAlign: TextAlign.center),
                        subtitle: Text('10 Dt'),
                    ),
                ),
                 ),
                  positionedRemove()
                ],

              ),
            ],
          ),
        ),
      )
    );
  }

  Widget positionedRemove() {
    return Positioned(
      top: 20,
      right: 15,
      child: Container(
        height: 30,
        width: 30,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            padding: EdgeInsets.all(0.0),
            color: Colors.amber,
            child: Icon(
              Icons.clear,
              color: Colors.white,
            ),
            onPressed: (){

            },
        ),
      ),
    );
  }
}