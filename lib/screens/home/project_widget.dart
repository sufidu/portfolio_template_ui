import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget(
      {super.key,
      required this.projectTile,
      required this.projectSubtitle,
      required this.duration});

  final String projectTile;
  final String projectSubtitle;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'icons/android_icon.svg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectTile,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          projectSubtitle,
                          style: const TextStyle(color: Colors.black54),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  duration,
                  style: const TextStyle(color: Colors.black87),
                )
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black87,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              "View Project",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
