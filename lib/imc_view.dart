import 'dart:js';

import 'package:calculadora_imc/home_view.dart';
import 'package:calculadora_imc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImcView extends StatefulWidget {
  const ImcView({super.key, required this.user});

 final User user;

  @override
  State<ImcView> createState() => __ImcViewStateState();
}

class __ImcViewStateState extends State<ImcView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   

    body: Center(
    child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
    child: Column(children: [
    Text(widget.user.imc.toString(), style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 120,
      ),),
      
      const SizedBox(height: 95,),

      Text(getText(imc:widget.user.imc!.toInt(),), style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 40,
      ),),

  SizedBox(height:30,),

             GestureDetector(
                onTap: (){
                                      Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) =>  HomeView()));
               
                                }, 
                         
                child: Text('⬅',style: TextStyle(fontSize:50,color: Colors.black, ),)
              
              ),

      ],)
  )
)
);




  }

String getText({int imc = 18}) {
  switch(imc){
  case < 18:
  return 'você está magro';
  

  case < 25:
  return "Você está normal";
  

  case < 30:
  return "Você está Sobrepeso";
 
  }

  return "Você está com Obsidade";
}

} 