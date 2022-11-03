import 'package:flutter/material.dart';

class CDE extends StatefulWidget{
  const CDE ({super.key});

  @override 
  State<CDE> createState() => _CDE();
}

class _CDE extends State<CDE> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.blue,
          child: InkWell(
            splashColor: Colors.blueGrey,
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxXnC3fwMwkbIt3ejGRIw3NmbDyUtgS5g2jA&usqp=CAU',
                  ),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 6,),
                Text(
                  'Button',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                ),
                const SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}