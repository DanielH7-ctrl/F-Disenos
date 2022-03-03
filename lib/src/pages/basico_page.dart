import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          
        ],
      )
    );
  }

  Widget _crearImagen() {
    return Image(
            image: NetworkImage('https://shotkit.com/wp-content/uploads/2020/08/night-landscape-photography-featured.jpg'),
          );
  }

  Widget _crearTitulo() {
    return Container(
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
          );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        _accion( Icons.call, 'CALL'),
        _accion( Icons.near_me, 'ROUTE'),
        _accion( Icons.share, 'SHARE'),

      ],
    );
  }

  Widget _accion(IconData icon, String texto) {

    return Column(
      children: [
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox(height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ), )
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lacinia bibendum risus, eget tempor diam facilisis a. Nam velit dui, eleifend a sem at, facilisis luctus enim. In hac habitasse platea dictumst. Vivamus egestas ac velit non lobortis. Suspendisse hendrerit elit nec tincidunt dapibus. Vestibulum id elit lorem. Suspendisse at tempus diam. Mauris sed dolor interdum mi ultrices sodales in ac diam.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}