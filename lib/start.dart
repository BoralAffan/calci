import 'package:calci/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class started extends StatelessWidget {
  const started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Please enter your email to get started'),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'enter email', labelText: 'Enter your email'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30))),
                onPressed: () {
                                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
