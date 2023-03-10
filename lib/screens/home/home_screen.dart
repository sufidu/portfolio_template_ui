import 'package:flutter/material.dart';
import 'package:portfolio_template_ui/screens/home/about_widget.dart';
import 'package:portfolio_template_ui/screens/home/locatioin_widget.dart';
import 'package:portfolio_template_ui/screens/home/project_widget.dart';
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
          title: const Text('Md Sufi Khan'),
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
                      color: Colors.blue[50],
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
              Column(
                children: [
                  _infoCenterWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Wrap(
                      alignment: _screenSize.width < 850
                          ? WrapAlignment.start
                          : WrapAlignment.center,
                      spacing: 30.0,
                      runSpacing: 20.0,
                      children: [
                        const AboutWidget(),
                        const LocationWidget(),
                        const ProjectWidget(
                            projectTile: 'Team Lead',
                            projectSubtitle: 'AFLEX',
                            duration: 'August 2020 - March 2022'),
                        const ProjectWidget(
                            projectTile: 'Software Developer',
                            projectSubtitle: 'AFLEX',
                            duration: 'June 2019 - December 2020'),
                        SizedBox(
                          width: _screenSize.width < 1060
                              ? 0
                              : _screenSize.width < 1200
                                  ? 0
                                  : _screenSize.width < 1400
                                      ? 200
                                      : 320,
                        ),
                        const ProjectWidget(
                            projectTile: 'Software Developer',
                            projectSubtitle: 'AFLEX',
                            duration: 'March 2018 - April 2019'),
                        const ProjectWidget(
                            projectTile: 'Team Member',
                            projectSubtitle: 'AFLEX',
                            duration: 'August 2017 - March 2018'),
                        SizedBox(
                          width: _screenSize.width < 1060
                              ? 0
                              : _screenSize.width < 1200
                                  ? 0
                                  : _screenSize.width < 1400
                                      ? 200
                                      : 320,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCenterWidget() {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Md Sufi Khan",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "@sufikhan",
          style: TextStyle(color: Colors.black87),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(20.0)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
              child: const Text("View Portfolio"),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(20.0)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 30, 13, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              child: const Text("+  Follow"),
            ),
          ],
        ),
      ],
    );
  }
}
