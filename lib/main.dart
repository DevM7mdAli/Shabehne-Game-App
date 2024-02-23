import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Center(child:  Text("SHABEHNE | شبهني",
                                          style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.indigo[600],
      ),
      body: ImagesPage(),
    ),
  ));
}

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
                  
                  int x = 1 , y = 1;
                  @override
                  Widget build(BuildContext context){

                    return Container(
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Try Again",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                    if(x == 9){x = 1;}
                                    else{x = x + 1; }
                                    });
                                  },
                                  child: Image.asset("Images/image-$x.png", 
                                                      width: 180,
                                    ),
                                ),
                                ),


                              Expanded(
                                flex: 1,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                    if(y == 9){y = 1;}
                                    else{y = y + 1; }
                                    });
                                  },
                                  child: Image.asset("Images/image-$y.png", 
                                                      width: 180,
                                    ),
                                ),
                                ),
                          ],),
                        ],
                      ),
                    );
                  }
                }