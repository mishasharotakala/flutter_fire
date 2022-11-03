import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class WidgetGrid extends StatefulWidget{
  final String url;
  final String label;
  

  const WidgetGrid({super.key, 
    required this.url,
    required this.label,
  });

  @override 
  State<WidgetGrid> createState() => _WidgetGrid();
}

class _WidgetGrid extends State<WidgetGrid> {
  @override 
  Widget build(BuildContext context) {
    /*return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          /*Text(
            widget.label,
            style: AppTheme.darkTextTheme.bodyText1,
            textAlign: TextAlign.end,
            selectionColor: Colors.green,
          ),*/
        ],
      ),
    );*/
    return Scaffold(
      
      body: Material(
        color: Colors.blue,
        elevation: 28,
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.grey.shade500,
          onTap: () {},
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Ink.image(
                    image: NetworkImage(
                      widget.url,
                    ),
                    height: 250,
                    width: 450,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 6,),
              Text(
                widget.label,
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