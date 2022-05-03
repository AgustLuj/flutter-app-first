import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

class Account {
  final String name;
  final IconData icon;
  const Account({required this.name, required this.icon});
}

class HomeScreen extends StatelessWidget {
  final options = const [
    Account(name: "Agustin", icon: Icons.account_circle),
    Account(name: "Fabian", icon: Icons.account_circle),
    Account(name: "Pablo", icon: Icons.account_circle),
    Account(name: "Martin", icon: Icons.account_circle),
    Account(name: "Marcos", icon: Icons.account_circle),
  ];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) =>itemBuilder(context, i,options[i]) ,
          separatorBuilder: (_, __) => const Divider(),
        )
      ),
    );
  }
}

itemBuilder(BuildContext context,int i,Account  options){
  return ListTile(
    leading: Icon(options.icon),
    title: Text(options.name),
    trailing: const Icon(Icons.chevron_right_sharp),
    onTap: () {
      final route = MaterialPageRoute(
        builder:(context) => CardScreen(name: options.name),
      );
      Navigator.push(context,route);
    },
  );
}