import 'package:flutter/material.dart';

class PopUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop-Up Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Pop-Up'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Pop-Up Dialog'),
                  content: Text('Hello, this is a pop-up dialog!'),
                  actions: [
                    TextButton(
                      child: Text('Close'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PopUpScreen(),
  ));
}
