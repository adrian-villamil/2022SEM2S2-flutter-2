import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(
      {super.key,
      required this.estado,
      required this.colorEstado,
      required this.valor});

  String estado;
  Color colorEstado;
  double valor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detalle del calculo"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Resultado",
                        style: TextStyle(fontSize: 50),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            estado.toString(),
                            style: TextStyle(color: colorEstado),
                          ),
                          Text(valor.toString()),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 112, 112),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        )
        //Center(child: Text(valor.toString())),
        );
  }
}
