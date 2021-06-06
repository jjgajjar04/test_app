import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class CarouselScreen extends StatelessWidget {
  static const String id = Constants.CAROUSEL_SCREEN;

  List<String> imageList = List.generate(5, (index) => 'assets/MAC.jpg');
  @override
  Widget build(BuildContext context) {
    print(imageList);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            _buildCarouselWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselWidget() {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 240.0,
        // enlargeStrategy: CenterPageEnlargeStrategy.scale,
        // enlargeCenterPage: true,
        // viewportFraction: 0.6,
      ),
      itemCount: imageList.length,
      itemBuilder: (BuildContext context, int index, int temp) => Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                imageList[index].toString(),
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black54,
              ),
            ),
            Positioned(
                child: Center(
              child: Text(
                'Text $index',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
