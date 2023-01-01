import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth < 750 ? screenWidth * 0.9 : 350,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.black45,
          width: 2.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Location",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                child: Image.asset(
                  'flags/bd_flag.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              const Text(
                "Dhaka, Bangladesh",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          _locationItem("Website", 'something.com'),
          _locationItem("Portfolio", '@sufikhan'),
          _locationItem("Email", 'hello@hotmail.com'),
        ],
      ),
    );
  }

  Widget _locationItem(String title, String subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          subTitle,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ],
    );
  }
}
