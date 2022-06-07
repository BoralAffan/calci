import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(brightness: Brightness.dark),
    home: view(),
  ));
}

class view extends StatefulWidget {
  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  //const view({Key? key}) : super(key: key);
  List<String> fruits = [
    'Orange',
    'mango',
    'pineapple',
    'apple',
    'chickoo',
    'banana',
    'Orange',
    'mango',
    'pineapple',
    'apple',
    'chickoo',
    'banana'
  ];
  List<String> person = [
    'Affan',
    'adil',
    'ayyan',
    'add',
    'insta',
    'faf',
    'Affan',
    'adil',
    'ayyan',
    'add',
    'insta',
    'faf'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('List view and grid view'),
          backgroundColor: Colors.purple),
      // body: ListView.builder(
      //   itemCount: fruits.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(

      //         leading: Icon(Icons.person),
      //         title: Text(fruits[index]),
      //         subtitle: Text(person[index]),
      //       ),
      //     );
      //   },
      // ),

      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 20,
      //     childAspectRatio: 3 / 4, //width by height ratio
      //   ),
      //   children: [
      //     Card(
      //       child: Center(child: Text('hii there')),
      //     ),
      //     Card(
      //       child: Center(child: Text('hii there')),
      //     ),
      //     Card(
      //       child: Center(child: Text('hii there')),
      //     ),
      //     Card(
      //       child: Center(child: Text('hii there')),
      //     ),
      //     Card(
      //       child: Center(child: Text('hii there')),
      //     ),
      //     Card(
      //       child: Center(child: Text('hii there')),
      //     ),
      //   ],
      // ),

      // body: GridView.builder(
      //     itemCount: fruits.length,
      //     gridDelegate:
      //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //     itemBuilder: (context, index) {
      //       return Card(

      //         child: Center(
      //           child: Text(fruits[index]),
      //         ),
      //       );
      //     }),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text('hii there '),
          ),
          Container(
            color: Colors.cyanAccent,
            child: Text('hii how r u '),
          ),
          Container(
            color: Colors.blueGrey,
            child: Text('fine, what about u '),
          ),
          Container(
            color: Colors.pink,
            child: Text(' i am also good'),
          ),
          Container(
            color: Colors.deepPurple,
            child: Text('hii there '),
          ),
        ],
      ),
    );
  }
}
