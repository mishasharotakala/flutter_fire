import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class ImagesWidget extends StatefulWidget{
  final String imageUrl;
  final String names;
  

  const ImagesWidget({super.key, 
    required this.imageUrl,
    required this.names,
  });

  @override 
  State<ImagesWidget> createState() => _ImagesWidget();
}

class _ImagesWidget extends State<ImagesWidget> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Material(
          color: Colors.blue,
          elevation: 28,
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: Colors.grey.shade500,
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
                  image: NetworkImage(
                    widget.imageUrl,
                  ),
                  height: 250,
                  width: 350,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 6,),
                Text(
                  widget.names,
                  style: AppTheme.darkTextTheme.bodyText1,
                  textAlign: TextAlign.end,
                  selectionColor: Colors.green,
                ),
                const SizedBox(height: 6,),
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}