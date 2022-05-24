import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: [
          Card(
            child: Column(
              children: const[
                ListTile(
                  leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary,),
                  title: Text('Soy un titulo'),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: const[
                ListTile(
                  leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary,),
                  title: Text('Soy un titulo'),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}