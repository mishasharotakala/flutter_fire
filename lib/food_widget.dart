import 'package:flutter/material.dart';
import 'package:flutter_fire/app_theme.dart';

class FoodWidget extends StatefulWidget{
  final String image;
  final String name;
  

  const FoodWidget({super.key, 
    required this.image,
    required this.name,
  });

  @override 
  State<FoodWidget> createState() => _FoodWidget();
}

class _FoodWidget extends State<FoodWidget> {
  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(
                widget.image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
          //child: Image.network(widget.image),),
      ),
      const SizedBox(height: 10,),

        Text(
          widget.name,
          style: AppTheme.darkTextTheme.bodyText1,
          /*style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),*/
        ),
      ],
    );
  }
}
    /*return Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(
                  widget.image,
                ),
                fit: BoxFit.fill
              ),
            ),
          ),
          //Image.network(widget.image,),
          const SizedBox(height: 85,),
          Flexible(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                widget.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),


            ),
          ),
          
        ],
      );*/
    
    /*return Container(
      child: Text(
        widget.name,
        style: TextStyle(
          fontSize: 15, 
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
          textBaseline: TextBaseline.ideographic,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: NetworkImage(
            widget.image,
          
          ),
          fit: BoxFit.fill
        ),
      ),
    );*/

    /*return Card(
      color:  Colors.white24,
      elevation: 8,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: ListTile(
        onTap: () {},
        onLongPress: () {},
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          padding: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1),
            ),
          ),
          child: Image.network(widget.image),
        ),
        title: Text(
          widget.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}*/