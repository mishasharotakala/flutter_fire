import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire/fun.dart';
import 'package:flutter_fire/hair/grid.dart';
import 'package:flutter_fire/hair/hair.dart';
import 'package:flutter_fire/hair/hair_do.dart';
import 'package:flutter_fire/image_slider.dart';
import 'card1.dart';
// 1
class Homie extends StatefulWidget {
  const Homie({super.key});
  
  @override
  HomieState createState() => HomieState();
  }
  
  class HomieState extends State<Homie> {
    // ignore: todo
    // TODO: Add state variables and functions
     int _selectedIndex = 0;

     static List<Widget> pages = <Widget>[
      // ignore: todo
      //TODO: Replace with Home
      const Card1(),
      const Hair(),
      //const Play(),

      //Container(color: Colors.blueGrey,),
      // ignore: todo
      //TODO: Replace with Card2
      const Grid(),
      //const Card2(),
      //Container(color: Colors.transparent,),
      // ignore: todo
      //TODO: Replace with Card3
      //const Funny(),
      //ABC(),
      //Carousel(imageUrl: imageUrl, data: data)
      //const Carousel(),
      const HairDo(),
      const ImageSlider(),
      //Container(color: Colors.teal,),
     ];

     /*void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
     }*/

    @override
    Widget build(BuildContext context) {
      final items = <Widget> [
        const Icon(Icons.home, size: 30,),
        const Icon(Icons.search, size: 30),
        const Icon(Icons.shopping_basket, size: 30),
        const Icon(Icons.payment, size: 30),
        //const Icon(Icons.person, size: 30),
        const Icon(Icons.check_box, size: 30,)
      ];
      return Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Text(
            'App',
            // 2
            style: Theme.of(context).textTheme.headline6,
          ),
          centerTitle: true,
        ),

        // ignore: todo
        // TODO: Show selected tab
        body: pages[_selectedIndex],
        // ignore: todo
        // TODO: Add bottom navigation bar
        // 4
        bottomNavigationBar: CurvedNavigationBar(
          // 5
          color: Colors.blueGrey,
          backgroundColor: Colors.transparent,
          height: 60,
          index: _selectedIndex,
          items: items,
          onTap: (index) => setState(() {
            _selectedIndex = index;
          }),
        ),
      );
    }
  }