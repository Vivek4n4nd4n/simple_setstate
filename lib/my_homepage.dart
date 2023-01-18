import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color clor = Colors.red;
  var txt = "press";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Container(
        color: clor,
        child: Center(
          child: TextButton(
              onPressed: () {
                print("object");
                setState(() {
                  clor = clor == Colors.green
                      ? Colors.red   
                      : Colors.green;

                  //  clor == Colors.green ?clor = Colors.red :clor = Colors.green;
                   txt = txt== 'Change To Red'? txt=' Change To Green' :txt='Change To Red';
                });
              },
              child: Text(
                txt,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ),
      ),
    );
  }
}
