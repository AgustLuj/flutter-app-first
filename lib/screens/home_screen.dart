import 'package:flutter/material.dart';
import 'package:my_app/models/menu_option.dart';
import 'package:my_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
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
        itemCount: AppRoutes.getCount(),
        itemBuilder: (context, i) =>
            itemBuilder(context, i, AppRoutes.menuOption[i]),
        separatorBuilder: (_, __) => const Divider(),
      )),
    );
  }
}

itemBuilder(BuildContext context, int i, MenuOption options) {
  return ListTile(
    leading: Icon(options.icon),
    title: Text(options.name),
    trailing: const Icon(Icons.chevron_right_sharp),
    onTap: () {
      // final route = MaterialPageRoute(
      //   builder: (context) => options.screen,
      // );
      Navigator.pushNamed(context, options.route);
    },
  );
}
