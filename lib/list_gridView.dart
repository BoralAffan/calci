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
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                
                leading: Icon(Icons.person),
                title: Text(fruits[index]),
                subtitle: Text(person[index]),
              ),
            );
          },
        ));
  }
}
