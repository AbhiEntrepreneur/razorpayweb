// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
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
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: SafeArea(
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
                      Text(widget.item.description),
                      SizedBox(
                        height: 18,
                      ),
                      TextField(
                        // controller: textEditingController1,
                        decoration: InputDecoration(
                          hintText: '',
                          labelText: 'Your name',
                          errorText: '',
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.black),
                          border: OutlineInputBorder(),
                          // prefixIcon: Icon(
                            // Icons.email,
                            // color: Colors.black12,
                          // ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                        // keyboardType: TextInputType.number,
                        // maxLength: 10,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextField(
                        controller: textEditingController1,
                        decoration: InputDecoration(
                          hintText: '',
                          labelText: 'Your email ',
                          errorText: '',
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.black),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black12,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        // maxLength: 10,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextField(
                        controller: textEditingController2,
                        decoration: InputDecoration(
                          hintText: '',
                          labelText: 'Your Mo number ',
                          errorText: '',
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.black),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.phone_android,
                            color: Colors.black12,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                      ),
                      
                      
                      Builder(
                          builder: (context) => Center(
                              child: ElevatedButton(
                                  child: Text("BuyNow"),
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Payments(
                                                  title: widget.item.title,
                                                  urlImage:
                                                      widget.item.urlImage,
                                                  subtitle:
                                                      widget.item.subtitle,
                                                  textEditingController1:
                                                      textEditingController1
                                                          .text,
                                                          textEditingController2: textEditingController2.text,
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
                      Text(widget.item.description),
                      Builder(
                          builder: (context) => Center(
                              child: ElevatedButton(
                                  child: Text("Buy Now"),
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Payments(
                                                  title: widget.item.title,
                                                  urlImage:
                                                      widget.item.urlImage,
                                                  subtitle:
                                                      widget.item.subtitle,
                                                  textEditingController1:
                                                      textEditingController1
                                                          .text,
                                                          textEditingController2: textEditingController2.text,
                                                )),
                                      ))))
                    ],
                  );
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}
