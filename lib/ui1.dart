import 'package:calci/home.dart';
import 'package:calci/start.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UI1(),
  ));
}

class UI1 extends StatelessWidget {
  const UI1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 400,
                child: Image(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get Insight',
                    style: GoogleFonts.acme(fontSize: 30),
                  ),
                  Text(
                    'anytime, anywhere',
                    style: GoogleFonts.acme(fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Track matrices, and easily accesible your result at anywhere',
                      style: GoogleFonts.pacifico()),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => started()));
                  },
                  child: Text('Get Started'),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a customer yet ?'),
                  Text(
                    '  Learn More',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
