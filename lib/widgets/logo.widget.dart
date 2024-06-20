import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
       SizedBox(height: 60,
          ),
          Padding(padding: EdgeInsets.only(bottom: 26.0),
          child: Image(image: AssetImage('lib/assets/images/aog-white.png'),
          width: 100.0,
          height: 100.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "Álcool ou Gasolina",
              style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Shoulders Display"
             ),
             textAlign: TextAlign.center,
            ),
          SizedBox(
              height: 20,
          ),
    ],);
  }
}