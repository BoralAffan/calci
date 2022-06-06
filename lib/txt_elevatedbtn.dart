import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: btn(),
  ));
}

class btn extends StatelessWidget {
  const btn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Txt button and elevated button'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: null,
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      overlayColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  child: Text(
                    'Click here',
                    style: TextStyle(color: Colors.red),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 400,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow)),
                    onPressed: () {
                      print('like');
                    },
                    child: Text(
                      'Tap',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ));
  }
}
