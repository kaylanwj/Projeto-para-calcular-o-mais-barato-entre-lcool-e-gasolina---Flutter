/*import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: <Widget>[
              Container(
                width: 140,
                alignment: Alignment.centerRight,
                child: Text(
                  label,
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
                controller: ctrl,
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
         );
  }
}*/