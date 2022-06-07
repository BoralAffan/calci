import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom sheet widget')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  backgroundColor: Theme.of(context).primaryColor,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Affan'),
                          subtitle: Text('Its me the boss'),
                        ),
                        ListTile(
                          title: Text('Eleven '),
                          subtitle: Text('Soon i am going to get superpower'),
                        ),
                        ListTile(
                          title: Text('John cena'),
                          subtitle: Text('No one can see me'),
                        ),
                        ListTile(
                          title: Text('Hooli'),
                          subtitle: Text('Best company'),
                        ),
                        ListTile(
                          title: Text('Hooli'),
                          subtitle: Text('Best company'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('BottomSheet')),
      ),
    );
  }
}
