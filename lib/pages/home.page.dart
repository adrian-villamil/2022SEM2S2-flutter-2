import 'package:flutter/material.dart';
import 'package:noticias/pages/detail.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 50;
  int edad = 10;
  double estatura = 166;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculo IMC"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.man, size: 100.0),
                            Text("Hombre")
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 114, 112, 112),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        //color: Color.fromARGB(255, 114, 112, 112),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.woman, size: 100.0),
                            Text("Mujer")
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 114, 112, 112),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        //color: Color.fromARGB(255, 114, 112, 112),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 114, 112, 112),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Estatura"),
                      Text(
                        '${estatura.toString()}cm',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Slider(
                          value: estatura,
                          min: 50,
                          max: 250,
                          divisions: 200,
                          onChanged: (double value) {
                            setState(() {
                              estatura = value;
                            });
                          })
                    ]),
                //color: Color.fromARGB(255, 114, 112, 112),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Peso"),
                            Text(
                              peso.toString(),
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 40,
                                  onPressed: () {
                                    setState(() {
                                      peso += 1;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle),
                                ),
                                IconButton(
                                  iconSize: 40,
                                  onPressed: () {
                                    setState(() {
                                      peso -= 1;
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle),
                                ),
                              ],
                            )
                          ],
                        ),

                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 114, 112, 112),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        //color: Color.fromARGB(255, 114, 112, 112),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Edad"),
                            Text(
                              edad.toString(),
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  iconSize: 40,
                                  onPressed: () {
                                    setState(() {
                                      edad += 1;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle),
                                ),
                                IconButton(
                                  iconSize: 40,
                                  onPressed: () {
                                    setState(() {
                                      edad -= 1;
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle),
                                ),
                              ],
                            )
                          ],
                        ),

                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 114, 112, 112),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        //color: Color.fromARGB(255, 114, 112, 112),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              double valorCalculo = peso / (estatura * estatura);
              String estado = '';
              Color colorEstado = Colors.black;

              if (valorCalculo < 18.5) {
                estado = 'Bajo peso';
                colorEstado = Colors.orange;
              }

              if (valorCalculo >= 18.5 && valorCalculo <= 24.9) {
                estado = 'Normal';
                colorEstado = Colors.green;
              }

              if (valorCalculo >= 25 && valorCalculo <= 29.9) {
                estado = 'Sobrepeso';
                colorEstado = Color.fromARGB(255, 175, 112, 17);
              }

              if (valorCalculo >= 30 && valorCalculo <= 34.9) {
                estado = 'Obesidad I';
                colorEstado = Color.fromARGB(255, 214, 41, 41);
              }

              if (valorCalculo >= 35 && valorCalculo <= 39.9) {
                estado = 'Obesidad II';
                colorEstado = Color.fromARGB(255, 214, 41, 41);
              }

              if (valorCalculo >= 40 && valorCalculo <= 49.9) {
                estado = 'Obesidad III';
                colorEstado = Color.fromARGB(255, 141, 4, 4);
              }

              if (valorCalculo > 50) {
                estado = 'Obesidad IV';
                colorEstado = Color.fromARGB(255, 141, 4, 4);
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => DetailPage(
                          estado: estado,
                          colorEstado: colorEstado,
                          valor: valorCalculo))));
            },
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 218, 64, 64),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Calcular",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
