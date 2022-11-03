import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class ABCWidget extends StatefulWidget{
  final String url;
  final String label;
  

  const ABCWidget({super.key, 
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
  State<ABCWidget> createState() => _ABCWidget();
}

class _ABCWidget extends State<ABCWidget> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        alignment: Alignment.bottomRight,
        height: MediaQuery.of(context).size.height,
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
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
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