import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sb(),
  ));
}

class sb extends StatelessWidget {
  const sb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                content: Text('Thanks for submitting the form'),
                duration: new Duration(milliseconds: 3000),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      print('pressed');
                    },
                    textColor: Colors.blue),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text(
              'Submit!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent),
                overlayColor: MaterialStateProperty.all(Colors.pinkAccent)),
          ),
        ),
      ),
    );
  }
}
