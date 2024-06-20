import 'package:aog2_flutter/widgets/input.widget.dart';
import 'package:aog2_flutter/widgets/loading-button.widet.dart';
import 'package:aog2_flutter/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alCtrl = new MoneyMaskedTextController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),//0.7 1.0
              borderRadius: BorderRadius.circular(25),
            ),

            child: 
            Column(children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Compensa ultilizar álcool",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 40,
                  fontFamily: "Big Shoulders Display",
                ),

                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20,
              ),

              LoadingButton(
                busy: false,
                func: () {},
                text: "CALCULAR NOVAMENTE",
                invert: true,
          ),

                Container(
                  margin: EdgeInsets.all(30),
                  height: 50,
                  width: 500,
                  //width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(1000),
                  ),
                  child: FloatingActionButton(
                  child: Text('CALCULAR NOVAMENTE',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
                  onPressed: () {},
            ),
          ),
        ],
      ),
    ),

        Row(
            children: <Widget>[
              Container(
                width: 140,
                alignment: Alignment.centerRight,
                child: Text(
                  "Gasolina",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),
              SizedBox(
                width: 10,
            ),

              Expanded(child: TextFormField(
                controller: _gasCtrl,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Big Shoulders Display",
                ),

                decoration: InputDecoration(
                  border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),

        Row(
            children: <Widget>[
              Container(
                width: 140,
                alignment: Alignment.centerRight,
                child: Text(
                  "Álcool",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),

              SizedBox(
                width: 10,
            ),

              Expanded(child: TextFormField(
                controller: _alCtrl,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Big Shoulders Display",
              ),

                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
         ),
          Container(
            margin: EdgeInsets.all(30),
            height: 50,
            width: 500,
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(1000),
            ),
            child: FloatingActionButton(
            child: Text('CALCULAR',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: "Big Shoulders Display",
            ),
          ),
            onPressed: () {},
        ),
      ),
          LoadingButton(
            busy: false,
            func: (){},
            text: "CALCULAR",
            invert: false,
          ),
        ],
       ),
     ),
   );
  }
}

