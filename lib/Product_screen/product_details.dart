import 'package:flutter/material.dart';


class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text('Details'),

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
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/1.jpg'),
                    SizedBox(width: 10),
                    Image.asset('assets/images/2.jpg'),
                    SizedBox(width: 10),
                    Image.asset('assets/images/3.jpg'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Veste Imperméable',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Informations : ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
             TextField(
               decoration: InputDecoration(
                 labelText: 'Taille : '
               ),
               controller: TextEditingController(text: 'L'),
             ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Etat : '
                ),
                controller: TextEditingController(text: 'Neuf'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Prix : '
                ),
                controller: TextEditingController(text: '10 Dt'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Prix : '
                ),
                controller: TextEditingController(text: '10 Dt'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.edit_note_outlined,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}

