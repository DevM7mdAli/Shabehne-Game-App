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

class ImagesPage extends StatelessWidget{
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
                  onPressed: () => {},
                  child: Image.asset("Images/image-1.png", 
                                      width: 180,
                    ),
                ),
                ),


              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () => {},
                  child: Image.asset("Images/image-1.png", 
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
