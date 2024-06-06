import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class ScrolledImages extends StatelessWidget {
  const ScrolledImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 120,
      left: 0,
      right: 0,
      child: Container(
        height: 200,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
          ),
          items: [
            'https://theindianpublicschool.org/wp-content/uploads/2020/10/Story_CSOneliner_18.jpg',
            'https://qph.cf2.quoracdn.net/main-qimg-d2d354126bcad1951f1d84c8538c89db-lq',
            'https://www.upeducators.com/wp-content/uploads/2023/08/blog-banners-3.png',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(i, fit: BoxFit.cover),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
