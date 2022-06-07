import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dismissalwidget(),
  ));
}

class dismissalwidget extends StatelessWidget {
  const dismissalwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Orange', 'Mango', 'Pineapple', 'Banana', 'Apple'];
    return Scaffold(
      appBar: AppBar(title: Text('Dismissal widget')),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fr = fruits[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index] + ' added to favourite'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                      textColor: Colors.red,
                    ),
                    backgroundColor: Colors.green,
                  ));
                } else if (direction == DismissDirection.endToStart) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                      textColor: Colors.blue,
                    ),
                    content: Text(fruits[index] + ' removed from favourite'),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              key: Key(fr),
              background: Container(
                color: Color.fromRGBO(76, 175, 80, 1),
              ),
              secondaryBackground: Container(
                color: Colors.red,
              ),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ),
            );
          }),
    );
  }
}
