import 'package:flutter/material.dart';


class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var  text = "";

  LoadingButton ({super.key,
    required this.busy,
    required this.func,
    required this.invert,
    required this.text,
  });  
  @override
  Widget build(BuildContext context) {
    busy?
    return 
    Container(
            margin: EdgeInsets.all(30),
            height: 50,
            width: 500,
            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(1000),
            ),
          child: FloatingActionButton(
            onPressed: () {},
            child: Text('CALCULAR',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: "Big Shoulders Display",              
            ),            
          ),
      ),
    );
  }
}