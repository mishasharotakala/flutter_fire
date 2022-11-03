import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire/xyz.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  //double currentIndex = 0.0;
  //int activeIndex = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('carousel').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data?.docs.isNotEmpty == true) {
              return Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      aspectRatio: 10/5,
                      enlargeCenterPage: true,
                      //height: 300,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      reverse: false,
                      autoPlayAnimationDuration: const Duration(seconds: 5),
                      /*onPageChanged: (index, reason) => 
                          setState(() => activeIndex = index),*/
                    ),
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: ((context, index, realIndex) {
                      return ImagesWidget(
                        imageUrl: snapshot.data?.docs[index]['imageUrl'], 
                        names: snapshot.data?.docs[index]['names'],
                      );
                    }),
                  ),
                  /*const SizedBox(height: 32,),
                  DotsIndicator(
                    dotsCount: snapshot.data?.docs.length,
                    position: currentIndex,
                  ),*/
                ],
              );
            }
            else{
              return const Center(
                child: Text("Nothing"),
              );
            }
          }
          return const Center(
            child: Text(
              "Something went wrong",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          );
        }
      ),
    );
  }
}