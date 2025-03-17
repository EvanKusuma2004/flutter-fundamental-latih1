import 'package:flutter/material.dart';
 
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/text_widget.dart';
import 'basic_widgets/loading_cupertino.dart';
import 'basic_widgets/floatingactionbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Widgets Demo")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
           
            _buildNavigationButton(
              context, 
              "Image Widget", 
              const MyImageWidget(),
              icon: Icons.image,
            ),
            _buildNavigationButton(
              context, 
              "Loading Cupertino", 
              const LoadingCupertino(),
              icon: Icons.hourglass_top,
            ),
            _buildNavigationButton(
              context, 
              "Text Widget", 
              const MyTextWidget(),
              icon: Icons.text_fields,
            ),
            _buildNavigationButton(
              context, 
              "floating action button ", 
               FloatingActionButtonExample(),
              icon: Icons.text_fields,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(
    BuildContext context,
    String title,
    Widget destination, {
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          textStyle: const TextStyle(fontSize: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}