
import 'package:calculadora_imc/old_screen.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key, });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
     child: Column(
      children: [
        Padding(
         padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
         child: Image.asset('assets/img/imc.png',height: 500,),
          ), 
            ElevatedButton(
            onPressed: (){
                Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => const OldScreen(title: ''),
                ),);
           },
           child:  const Text('Iniciar',style: TextStyle(fontSize:20,color: Colors.white),),
           style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255,180,0,0),
           padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
           elevation: 10.0,
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            ),

         ),
       ),
  
      ],
     ),
   ),
  );
}
}  
