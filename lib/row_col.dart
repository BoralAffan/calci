import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(brightness: Brightness.dark),
    home: Rowcall(),
  ));
}

class Rowcall extends StatelessWidget {
  //const Rowcall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rows and Cols',
          style: TextStyle(
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellowAccent,
        // child: Wrap(
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.deepPurpleAccent,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.indigo,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Wrap(
        //       children: [
        //         Text(
        //             "slkjdf ssljdkslaaaaahgkdshjfjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjsdddddddddddddddddddddddddddddddddddddddddddddddddddddddduiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiweeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeehdaskjjjjjjjjjjjcnnnz,m")
        //       ],
        //     )
        //   ],
        // ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.indigo,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
