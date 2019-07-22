import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() {
    return _ContadorPageState();
  }

}
class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0; 

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
            Text('Número de clicks', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
            Text('Ful mil', style: TextStyle(fontSize:10),),
          ],
        )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:_crearBotones() 
    );
  }
  Widget _crearBotones(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width:30.0),
          /* FloatingActionButton(
            child:Icon(Icons.audiotrack,size: 40.0,),
            onPressed: (){
              _conteo = _conteo - 1;
              setState((){});
            },
          ), */
          FloatingActionButton(
            child:Icon(Icons.audiotrack,size: 40.0,),
            onPressed: _sustraer,
          ),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            child:Icon(Icons.android,size: 40.0,),
            onPressed: _agregar,
            backgroundColor: Colors.pink,
          ),
          //SizedBox(width:10.0),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            child:Icon(Icons.business_center,size:40.0) ,
            onPressed: _reset,
            backgroundColor: Colors.cyan,
          ),
          SizedBox(width:0.0),
        ],
      );
  }
  void _agregar(){
    setState(() => _conteo++);
  }
  void _sustraer(){
    setState(() => _conteo = _conteo-1);
  }
  void _reset(){
    setState(() => _conteo = 0);
  }
}