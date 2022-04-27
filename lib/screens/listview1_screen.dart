import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final String name;
  final IconData icon;
  const Account({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(icon),
        title: Text(name),
        trailing: const Icon(Icons.chevron_right_sharp),
        onTap: () => {},
      ),
    );
  }
}

class ListView1Screen extends StatelessWidget {
  final options = const [
    Account(name: "Agustin", icon: Icons.account_circle),
    Account(name: "Fabian", icon: Icons.account_circle),
    Account(name: "Pablo", icon: Icons.account_circle),
    Account(name: "Martin", icon: Icons.account_circle),
    Account(name: "Marcos", icon: Icons.account_circle),
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView1"),
      ),
      body: Center(
          child: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => options[i],
        separatorBuilder: (_, __) => const Divider(),
      )),
    );
  }
}
