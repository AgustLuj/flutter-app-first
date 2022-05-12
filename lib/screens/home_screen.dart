import 'package:flutter/material.dart';
import 'package:my_app/models/menu_option.dart';
import 'package:my_app/router/app_routes.dart';
import 'package:my_app/theme/app_theme.dart';

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
          
        )
      ),
    );
  }
}

itemBuilder(BuildContext context, int i, MenuOption options) {
  return ListTile(
    leading: Icon(options.icon,color: AppTheme.primary,),
    title: Text(options.name),
    trailing: const Icon(Icons.chevron_right_sharp),
    onTap: () {
      Navigator.pushNamed(context, options.route);
    },
  );
}
