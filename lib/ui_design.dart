import 'package:flutter/material.dart';
import 'package:flutter_fire/hair/hair_widget.dart';

// ignore: must_be_immutable
class UIDesign extends StatefulWidget {
  HairWidget? model;
  //final names = FirebaseFirestore.instance.collection('hair').snapshots();
  UIDesign({super.key, this.model});

  @override
  State<UIDesign> createState() => _UIDesignState();
}

class _UIDesignState extends State<UIDesign> {
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
                widget.model!.url.toString(),
              ),
            ),
            /*const SizedBox(height: 1,),
            Text(
              widget.model!.label.toString(),
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