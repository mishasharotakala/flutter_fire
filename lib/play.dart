import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire/card1.dart';
import 'package:flutter_fire/carousel_widget.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
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
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: CarouselSlider.builder(
                            options: CarouselOptions(
                              aspectRatio: 16/9,
                              enlargeCenterPage: true,
                              height: MediaQuery.of(context).size.height * 0.9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              reverse: false,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration: const Duration(seconds: 5),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              //onPageChanged: (index, reason) => 
                              //setState(() => activeIndex = index),
                              scrollDirection: Axis.horizontal,
                            ),
                            itemCount: snapshot.data?.docs.length,
                            itemBuilder: ((context, index, realIndex) {
                              return CarouselWidget(
                                imageUrl: snapshot.data?.docs[index]['imageUrl'], 
                                names: snapshot.data?.docs[index]['names'],
                              );
                            }),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: Card1(),),
                    ],
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