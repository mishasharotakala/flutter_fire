import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class CarouselWidget extends StatefulWidget{
  final String imageUrl;
  final String names;
  

  const CarouselWidget({super.key, 
    required this.imageUrl,
    required this.names,
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
  State<CarouselWidget> createState() => _CarouselWidget();
}

class _CarouselWidget extends State<CarouselWidget> {
  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: NetworkImage(
            widget.imageUrl,
          
          ),
          fit: BoxFit.fill
        ),
      ),

      child: Text(
        widget.names,
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