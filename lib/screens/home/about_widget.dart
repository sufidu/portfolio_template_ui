import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.amber,
      width: screenWidth < 750 ? screenWidth * 0.9 : (screenWidth - 420),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Experience",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "I specialise in Android and Flutter develpment.",
            style: TextStyle(color: Colors.black87),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "About Me",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "I am an Android Developer based in Dhaka, Bangladesh. I specialize Android and Flutter development. I'm always striving to grow and learn something new and I don't take myself too seriously.\n\nI'm passionate about helping startups grow, improve their customer experince.",
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
