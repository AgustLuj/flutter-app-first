import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  final String? name;
  const CardScreen({Key? key, this.name}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Card"),
        centerTitle: true,
      ),
      body: Center(
         child: Text(name??'Hola'),
      ),
    );
  }
}