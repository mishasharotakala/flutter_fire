import 'package:flutter/material.dart';

class HairWidget extends StatefulWidget{
  final String url;
  //final String label;
  

  const HairWidget({super.key, 
    required this.url,
    //required this.label,
  });

  /*HairWidget.fromJson(Map<String, dynamic> json){
    url = json['url'];
    label = json['label'];*/

  @override 
  State<HairWidget> createState() => _HairWidget();
}

class _HairWidget extends State<HairWidget> {
  @override 
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      elevation: 20,
      shadowColor: Colors.grey,
      child: SizedBox(
        height: 270,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                widget.url,
              ),
            ),
            /*const SizedBox(height: 1,),
            Text(
              widget.label,
              style: AppTheme.darkTextTheme.bodyText1,
              textAlign: TextAlign.end,
              selectionColor: Colors.green,
            ),*/
          ],
        ),
      ),
    ); 
  }
}