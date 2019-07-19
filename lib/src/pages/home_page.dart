import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: estiloTexto),
            Text('0', style: estiloTexto),
            Text('Ful mil', style: TextStyle(fontSize:10),),
          ],
        )
      ),
      floatingActionButton:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child:Icon(Icons.audiotrack,size: 40.0,),
            onPressed: (){
              print('Hola mundo');
            },
          ),
          FloatingActionButton(
            child:Icon(Icons.android,size: 40.0,),
            onPressed: (){
              print('Hola mundo');
            },
          ),
          FloatingActionButton(
            child:Icon(Icons.business_center,size:40.0) ,
            onPressed: (){
              print('Cambios');
            },
          )
        ],
      )
      /* Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('boton1', style: estiloTexto,),
        Text('boton2', style: estiloTexto,)
      ],) */ ,
    );
  }
}
