import 'package:flutter/material.dart';

class AnimatedActionWidget extends StatefulWidget {
  final String label;
  const AnimatedActionWidget({super.key, required this.label});

  @override
  State<AnimatedActionWidget> createState() => _AnimatedActionWidgetState();
}

class _AnimatedActionWidgetState extends State<AnimatedActionWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: Text(
          widget.label,
          style: TextStyle(
              color: _isHover ? Colors.orange.shade400 : Colors.white,
              fontSize: 17),
        ),
      ),
    );
  }
}
