import 'package:flutter/material.dart';
import 'package:my_app/widgets/widgets.dart';

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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: const [
          CardWidget1(),
          SizedBox(height: 10),
          CardWidget2(),
          SizedBox(height: 10),
          CardWidget2(),
          SizedBox(height: 10),
          CardWidget2(),
        ],
      )
    );
  }
}