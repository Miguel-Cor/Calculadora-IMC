import 'package:calculadora_imc/calculator_view.dart';
import 'package:calculadora_imc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OldScreen extends StatefulWidget{
  const OldScreen({super.key, required String title});

 @override 
  State<OldScreen> createState() => _OldScreenState();
}

class _OldScreenState extends State<OldScreen> {
  get style => null;
  double _idadeAtual = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                  child: Text('Idade: ${_idadeAtual.toInt()} anos',
                  style:TextStyle(
                  fontSize:20 ,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Image.asset('assets/img/child.jpg',width: 50,height: 50,),
                  Image.asset('assets/img/grandfather.jpg',width: 50,height: 50,),
                  ],
                  ),
          Slider(
            value: _idadeAtual,
            min: 1,
            max: 100,
            divisions: 82,
            label: '${_idadeAtual.toInt()} anos',
            onChanged: (novaIdade) {
              setState(() {
                _idadeAtual = novaIdade;
              });
            },
          ),
                
                  const SizedBox(height: 100,),

                ElevatedButton(
                onPressed: () {
                  Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) =>  CalculatorView(title: '',user: User(idade:_idadeAtual.toInt()),),
                ),
                );
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 182, 0, 0),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Pronto',style: TextStyle(fontSize:20,color: Colors.white),),
                ),

                SizedBox(height:30,),

              GestureDetector(onTap: (){
                                Navigator.pop(context );    
                                },  child: Text('⬅',style: TextStyle(fontSize:50,color: Colors.black, ),)),
            ],
          ),
            ),
       ),
    );
  }
}