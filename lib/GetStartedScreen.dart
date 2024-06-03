import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool colorCode = false;
  @override
  Widget build(BuildContext context) {
    final heightOfScreen = MediaQuery.of(context).size.height;
    final widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: heightOfScreen * 0.5,
            child: Image.asset("images/emoji.png"),
          ),
        ),
        const Text(
          "Discover Your ",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontFamily: "RinkuFont"),
        ),
        const Text(
          "Dream Job Here ",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontFamily: "RinkuFont"),
        ),
        const Text(
          "Explore all the job based on your skills & interest get top MNC's ",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "RinkuFont"),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RawMaterialButton(
              onPressed: () {
                setState(() {
                  colorCode = !colorCode;
                });
                Navigator.pushNamed(context, "/loginscreen");
              },
              fillColor: colorCode ? Colors.blue : Colors.white,
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
                child: Text("Login"),
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                setState(() {
                  colorCode = !colorCode;
                });
                Navigator.pushNamed(context, "/registerscreen");
              },
              fillColor: colorCode ? Colors.white : Colors.blue,
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
                child: Text("Register"),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
