import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showdailog(context);
            },
            child: Text('Submit')),
      ),
    );
  }
}

Future<void> _showdailog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.pinkAccent.shade400,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Alert!!!!'),
          actions: [
            TextButton(onPressed: () {}, child: Text('continue')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('cancel')),
          ],
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Are you sure you want to submit?'),
                Text('After submitting u cant change anything'),
              ],
            ),
          ),
        );
      });
}
