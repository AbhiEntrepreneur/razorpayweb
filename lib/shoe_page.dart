// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'dart:developer';
import 'package:futurek/homepage.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:futurek/razorpaypopup.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoePage extends StatefulWidget {
  final CardItem item;
 

  const ShoePage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ShoePage> createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.title),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
            return Column(
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.network(
                    widget.item.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.item.title,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Builder(
                    builder: (context) => Center(
                        child: ElevatedButton(
                            child: Text("BuyNow"),
                            onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payments(
                                          
                                          )),
                                ))))
              ],
            );
          } else {
            return Row(
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.network(
                    widget.item.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.item.title,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Builder(
                    builder: (context) => Center(
                        child: ElevatedButton(
                            child: Text("Buy Now"),
                            onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Payments()),
                                ))))
              ],
            );
          }
        }),
      ),
    );
  }
}
