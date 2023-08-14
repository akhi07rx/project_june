import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: items, options: options),
    );
  }
}
