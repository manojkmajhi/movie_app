import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app/app/core/values/s_spacing.dart';

class MoviesView extends GetView {
  const MoviesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: const TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SSpacing.smW,
                Text(
                  "Popular Movies",
                  style: Get.textTheme.titleLarge,
                ),
                const Spacer(),
                Text(
                  "See All",
                  style: Get.textTheme.titleLarge,
                ),
                const Icon(Icons.chevron_right_outlined, size: 30),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
