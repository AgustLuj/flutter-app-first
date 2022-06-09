import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class CardWidget1 extends StatelessWidget {
   
  const CardWidget1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary,size: 40,),
            title: Text('Soy un titulo'),
            subtitle: Text("Soy un subtitulo"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text("Cancel")
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text("Ok")
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}