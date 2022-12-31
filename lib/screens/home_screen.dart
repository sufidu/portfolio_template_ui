import 'package:flutter/material.dart';
import 'package:portfolio_template_ui/widgets/animated_action_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> navItems = [
    const AnimatedActionWidget(label: "Education"),
    const AnimatedActionWidget(label: "Projects"),
    const SizedBox(
      width: 20.0,
    )
  ];

  bool _isMobile = false;
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    _isMobile = _screenSize.width > 700 ? false : true;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Md Sufi Khan'),
          actions: _isMobile ? null : navItems,
        ),
        drawer: _isMobile
            ? Drawer(
                child: ListView(
                  children: navItems,
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.redAccent]),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      height: 60,
                      width: _screenSize.width,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 55,
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2015/03/04/22/35/avatar-659651_960_720.png',
                          width: 500,
                          height: 500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
