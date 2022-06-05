import 'package:calci/button.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      home: calci(),
      theme: new ThemeData(
          primaryColor: Colors.tealAccent, accentColor: Colors.red),
    );
  }
}

class calci extends StatefulWidget {
  const calci({Key? key}) : super(key: key);

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  void btnOnClick(String btnValue) {
    print(btnValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: Color.fromARGB(255, 133, 175, 165),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.attach_money),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                '5+8=13',
                style: TextStyle(fontSize: 30, color: Colors.black38),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                '5+8+7+9+9+10+13',
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                '5+8=13',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 3,
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calci2btn(text: 'AC', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(Icons.backspace_outlined, color: Colors.white),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(Icons.percent_outlined, color: Colors.white),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                calci2btn(text: '/', callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcibuttons(text: '7', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '8', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '9', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calci2btn(text: 'X', callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcibuttons(text: '4', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '5', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '6', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calci2btn(text: '-', callback: btnOnClick)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcibuttons(text: '1', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '2', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '3', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calci2btn(text: '+', callback: btnOnClick)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Icon(Icons.swap_horiz)),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '0', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                calcibuttons(text: '.', callback: btnOnClick),
                Padding(padding: EdgeInsets.only(right: 40)),
                // calcibuttons(text: '=', callback: btnOnClick),
                calci2btn(text: '=', callback: btnOnClick)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
