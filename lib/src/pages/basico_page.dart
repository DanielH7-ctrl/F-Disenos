import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage('https://shotkit.com/wp-content/uploads/2020/08/night-landscape-photography-featured.jpg'),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Estrella fugaz en las montañas', style: estiloTitulo ),
                      SizedBox(height: 7.0 ),
                      Text('Anocheser hermoso', style: estiloSubTitulo ),
                    ],
                  ),
                ),
                Icon(Icons.star, color: Colors.red, size: 30.0 ),
                Text('41', style: TextStyle( fontSize: 20.0) )

              ],
            ),
          )
          
        ],
      )
    );
  }
}