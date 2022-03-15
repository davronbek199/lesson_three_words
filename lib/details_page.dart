import 'package:flutter/material.dart';
import 'package:lesson_three/words.dart';

class DetailsPage extends StatelessWidget {
  final Words words;

  const DetailsPage({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                words.word,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.blue),
              ),
              SizedBox(height: 6),
              Text(
                words.translation,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.orange),
              ),
              SizedBox(height: 40),
              Text(
                words.description,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
