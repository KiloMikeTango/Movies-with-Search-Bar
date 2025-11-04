import 'package:flutter/material.dart';

class AboutMovie extends StatelessWidget {
  final String? appBarTitle;
  final String? description;
  final String? movieImage;
  const AboutMovie({
    super.key,
    required this.appBarTitle,
    required this.description,
    required this.movieImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(movieImage!, width: 200, height: 200),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                top: 20,
                bottom: 17,
              ),
              child: Text(description!, style: TextStyle(fontSize: 18.5)),
            ),
          ],
        ),
      ),
    );
  }
}
