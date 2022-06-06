import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(prac());
}

class prac extends StatelessWidget {
  const prac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'practise',
      theme: new ThemeData(
        brightness: Brightness.dark,
      ),
      home: p(),
    );
  }
}

class p extends StatelessWidget {
  const p({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('coloumn and sizedbox'),
        centerTitle: false,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.pink,
                //shape: BoxShape.circle
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.elliptical(20, 40))),
          ),
          
        ],
      )),
    );
  }
}
