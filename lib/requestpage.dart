// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('requestpage'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    return;
                  },
                  child: Text('video message '),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize: MaterialStateProperty.all(Size(100, 100)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () => Text('abb'),
                  child: Text('video call '),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    minimumSize: MaterialStateProperty.all(Size(100, 100)),
                  ),
                )
              ],
            )
          ],
        )));
  }
}
