import 'package:flutter/material.dart';

class calcibuttons extends StatelessWidget {
  //const calcibuttons({Key? key}) : super(key: key);
  final String text;
  final Function callback;

  const calcibuttons({
    required this.text,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () => callback(text),
          child: Text(
            text,
          )),
          
    );
  }
}

class calci2btn extends StatelessWidget {
 // const calci2btn({Key? key}) : super(key: key);
  final String text;
  final Function callback;


  const calci2btn({
    required this.text,
    required this.callback,

  });
  @override
  Widget build(BuildContext context) {
      return Container(
      child: OutlinedButton(
          onPressed: () => callback(text),
           style: OutlinedButton.styleFrom(backgroundColor: Colors.orangeAccent),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          )),
          
    );
  }
}