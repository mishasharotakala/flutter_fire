import 'package:flutter/material.dart';
import 'package:flutter_fire/card2.dart';
import 'package:flutter_fire/fun.dart';

import 'card1.dart';
// 1
class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  HomeState createState() => HomeState();
  }
  
  class HomeState extends State<Home> {
    // ignore: todo
    // TODO: Add state variables and functions
     int _selectedIndex = 0;

     static List<Widget> pages = <Widget>[
      // ignore: todo
      //TODO: Replace with Home
      const Card1(),
      //Container(color: Colors.blueGrey,),
      // ignore: todo
      //TODO: Replace with Card2
      const Card2(),
      //Container(color: Colors.transparent,),
      // ignore: todo
      //TODO: Replace with Card3
      const Funny(),
      //ABC(),
      //Carousel(imageUrl: imageUrl, data: data)
      //const Carousel(),
      //Container(color: Colors.teal,),
     ];

     void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
     }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
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
        bottomNavigationBar: BottomNavigationBar(
          // 5
          selectedItemColor:
          Theme.of(context).textSelectionTheme.selectionColor,
          // ignore: todo
          // TODO: Set selected tab bar
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3',
            ),
          ],
        ),
      );
    }
  }