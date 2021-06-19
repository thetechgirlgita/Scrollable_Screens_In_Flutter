import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: scrollable_screens(),
    );
  }
}

class scrollable_screens extends StatefulWidget {
  const scrollable_screens({Key key}) : super(key: key);

  @override
  _scrollable_screensState createState() => _scrollable_screensState();
}

class _scrollable_screensState extends State<scrollable_screens> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            "FaceBook",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 55,
              color: Colors.white,
            ),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              "Youtube",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.pink,
            child: Text(
              "Instagram",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 55,
                color: Colors.white,
              ),
            )),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Text(
              "Linkedin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 55,
                color: Colors.white,
              ),
            )),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.purple,
            child: Text(
              "Thanks For Watching",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            )),
      ],
    ));
  }
}
