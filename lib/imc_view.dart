import 'package:calculadora_imc/home_view.dart';
import 'package:calculadora_imc/user.dart';
import 'package:flutter/material.dart';

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
                padding:
                    const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      widget.user.imc.toString(),
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 120,
                      ),
                    ),
                    const SizedBox(
                      height: 95,
                    ),
                    Text(
                      getText(
                        widget.user.imc!.toInt(),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeView()));
                        },
                        child: const Text(
                          '⬅',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ))));
  }

  String getText(int imc) {
    if (imc < 0) {
      return "Valor de IMC inválido";
    } else if (imc < 18) {
      return 'Você está magro';
    } else if (imc < 25) {
      return "Você está normal";
    } else if (imc < 30) {
      return "Você está com sobrepeso";
    } else if (imc < 35) {
      return "Obesidade grau I";
    } else if (imc < 40) {
      return "Obesidade grau II";
    } else {
      return "Obesidade grau III (mórbida)";
    }
  }
}
