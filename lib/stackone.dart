import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Screen"),
      ),
      body: Stack(
        children: [
          Positioned(
              left: 00,
              right: 00,
              top: 00,
              bottom: 00,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
              )),
          Positioned(
            left: 50,
            right: 50,
            top: 50,
            bottom: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.limeAccent,
            ),
          ),
          Positioned(
              left: 100,
              right: 100,
              top: 100,
              bottom: 100,
              child:
                  Container(width: 100, height: 100, color: Colors.pinkAccent)),
          Positioned(
              left: 150,
              right: 150,
              top: 150,
              bottom: 150,
              child: Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 192, 132, 202))),
          Positioned(
              left: 200,
              right: 200,
              top: 200,
              bottom: 200,
              child: Container(width: 100, height: 100, color: Colors.grey)),
        ],
      ),
    );
  }
}
