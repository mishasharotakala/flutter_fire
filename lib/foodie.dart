import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class RotaWidget extends StatefulWidget{
  final String image;
  final String name;
  

  const RotaWidget({super.key, 
    required this.image,
    required this.name,
  });

  @override 
  State<RotaWidget> createState() => _RotaWidget();
}

class _RotaWidget extends State<RotaWidget> {
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Material(
          color: Colors.grey.shade500,
          elevation: 8,
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
                    widget.image,
                  ),
                  height: 155,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16,),
                Text(
                  widget.name,
                  style: AppTheme.darkTextTheme.bodyText1,
                  textAlign: TextAlign.end,
                  selectionColor: Colors.green,
                ),
                const SizedBox(height: 6,),
              ],
            ),
          ),
        ),
    ); 
  }
}