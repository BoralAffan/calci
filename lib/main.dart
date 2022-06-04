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
                ElevatedButton(
                  onPressed: () {},
                  child: Text('AC'),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.backspace_outlined)),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.percent_outlined)),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    '/',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 137, 73)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('7'),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('8')),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('9')),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'X',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 137, 73)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('4'),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('5')),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('6')),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    '-',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 137, 73)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('1'),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('2')),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('3')),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    '+',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 137, 73)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Icon(Icons.swap_horiz)),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('0')),
                Padding(padding: EdgeInsets.only(right: 40)),
                ElevatedButton(onPressed: () {}, child: Text('.')),
                Padding(padding: EdgeInsets.only(right: 40)),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    '=',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 137, 73)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
