import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class CarouselHairWidget extends StatefulWidget{
  final String url;
  final String label;
  

  const CarouselHairWidget({super.key, 
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
  State<CarouselHairWidget> createState() => _CarouselHairWidget();
}

class _CarouselHairWidget extends State<CarouselHairWidget> {
  @override 
  Widget build(BuildContext context) {
    return Container(
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
      
    );

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