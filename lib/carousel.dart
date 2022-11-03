import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'carousel_widget.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int activeIndex = 0;
  double currrentPage = 0.0;

  //final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('carousel').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data?.docs.isNotEmpty == true) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 10/5,
                  enlargeCenterPage: true,
                  //height: 300,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  reverse: false,
                  autoPlayAnimationDuration: const Duration(seconds: 5),
                  onPageChanged: (index, reason) => 
                    setState(() => activeIndex = index),
                ),
                itemCount: snapshot.data?.docs.length,
                itemBuilder: ((context, index, realIndex) {
                  return CarouselWidget(
                    imageUrl: snapshot.data?.docs[index]['imageUrl'], 
                    names: snapshot.data?.docs[index]['names'],
                  );
                }),
              );
              /*const SizedBox(height: 32,),
              DotsIndicator(
                dotsCount: snapshot.data?.docs.length,
                position: currrentPage,
              );*/
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
  /*buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: imageUrl.length,
  ); */
}