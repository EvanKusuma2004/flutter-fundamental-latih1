import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Floating Action Button Example"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Text(
            "Tekan tombol di bawah!",
            style: TextStyle(fontSize: 18),
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Tombol ditekan!"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Icon(Icons.thumb_up),
            backgroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(FloatingActionButtonExample());
}