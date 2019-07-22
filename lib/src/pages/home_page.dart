import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 10;

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
            Text('$conteo', style: estiloTexto),
            Text('Ful mil', style: TextStyle(fontSize:10),),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            child:Icon(Icons.audiotrack,size: 40.0,),
            onPressed: (){
              print('Hola moco');
            },
          ),
          FloatingActionButton(
            child:Icon(Icons.android,size: 40.0,),
            onPressed: (){
              print('Hola mundo');
            },
            backgroundColor: Colors.pink,
          ),
          FloatingActionButton(
            child:Icon(Icons.business_center,size:40.0) ,
            onPressed: (){
              print('Cambios');
            },
            backgroundColor: Colors.cyan,
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
