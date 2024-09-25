import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MoviesView extends GetView {
  const MoviesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoviesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MoviesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
