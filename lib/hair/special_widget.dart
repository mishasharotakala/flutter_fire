import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class SpecialHairWidget extends StatefulWidget{
  final String url;
  final String label;
  

  const SpecialHairWidget({super.key, 
    required this.url,
    required this.label,
  });

  /*CarouselWidget.fromJson(Map<String, Object?> json)
       : this(imageUrl: json['imageUrl']! as String, names: json['names']! as String);

  Map<String, Object?> toJson() {
    return {
      'imageUrl': imageUrl,
      'names': names,
    };
  } */

  @override 
  State<SpecialHairWidget> createState() => _SpecialHairWidget();
}

class _SpecialHairWidget extends State<SpecialHairWidget> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        alignment: Alignment.bottomRight,
        child: Material(
          color: Colors.blueGrey.shade500,
          elevation: 28,
          borderRadius: BorderRadius.circular(48),
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
                      /*height: 250,
                      width: 450,*/
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //const SizedBox(height: 6,),
                Text(
                  widget.label,
                  style: AppTheme.darkTextTheme.bodyText1,
                  textAlign: TextAlign.right,
                  selectionColor: Colors.green,
                ),
                const SizedBox(height: 6,),
              ],
            ),
          ),
        ),
      ),
    );


    /*return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        image: DecorationImage(
          image: NetworkImage(
            widget.url,
          
          ),
          fit: BoxFit.fill,
        ),
      ),

      child: Text(
        widget.label,
        style: AppTheme.darkTextTheme.bodyText1,
      ),
      
    );*/

    /*return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(
                  widget.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
            //child: Image.network(widget.image),),
        ),
        //const SizedBox(height: 10,),

          Text(
            widget.names,
            style: AppTheme.darkTextTheme.bodyText1,
            /*style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),*/
          ),
        ],
      ),
    ); */
    
  }
}