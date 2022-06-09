import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class CardWidget2 extends StatelessWidget {
  
  const CardWidget2({Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: const [

          FadeInImage(
            image: NetworkImage("https://pbs.twimg.com/media/FTnsitXXEAAAq_I?format=jpg&name=large"), 
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
        ],
      )
    );
  }
}