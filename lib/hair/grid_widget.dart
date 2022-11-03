import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget{
  final String url;
  //final String label;
  

  const GridWidget({super.key, 
    required this.url,
    //required this.label,
  });

  @override 
  State<GridWidget> createState() => _GridWidget();
}

class _GridWidget extends State<GridWidget> {
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
                    widget.url,
                  ),
                  height: 250,
                  width: 450,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 6,),
                /*Text(
                  widget.label,
                  style: AppTheme.darkTextTheme.bodyText1,
                  textAlign: TextAlign.end,
                  selectionColor: Colors.green,
                ),
                SizedBox(height: 6,),*/
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}