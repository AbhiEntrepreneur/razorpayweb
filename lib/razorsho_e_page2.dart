// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'dart:ui';
import 'dart:developer';
import 'package:futurek/homepage.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:futurek/razorpaypopup.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoePage2 extends StatefulWidget {
  final CardItem2 item;

  const ShoePage2({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ShoePage2> createState() => _ShoePage2State();
}

class _ShoePage2State extends State<ShoePage2> {
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
                          widget.item.urlImage2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.item.title2,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(widget.item.description2),
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
                                                  title: widget.item.title2,
                                                  urlImage:
                                                      widget.item.urlImage2,
                                                  subtitle:
                                                      widget.item.subtitle2,
                                                  textEditingController1:
                                                      textEditingController1
                                                          .text,
                                                          textEditingController2: textEditingController2.text,
                                                )),
                                      )))),

                                      Container(

                decoration: BoxDecoration(color: Colors.grey.shade100),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text('WINERBOX'),

Column(
  children: [
    Text('useful links'),
    Text('home'),
    Text('privacy policy'),
    Text('t&c'),
    Text('about us')
    
  ],
),

Column(
  children: [
    Text('contact us'),
    Text('email')
  ],
)

],
                  
                ),
              )
              
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.network(
                          widget.item.urlImage2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.item.title2,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(widget.item.description2),
                      Builder(
                          builder: (context) => Center(
                              child: ElevatedButton(
                                  child: Text("Buy Now"),
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Payments(
                                                  title: widget.item.title2,
                                                  urlImage:
                                                      widget.item.urlImage2,
                                                  subtitle:
                                                      widget.item.subtitle2,
                                                  textEditingController1:
                                                      textEditingController1
                                                          .text,
                                                          textEditingController2: textEditingController2.text,
                                                )),
                                      )))),

                                      Container(

                decoration: BoxDecoration(color: Colors.grey.shade100),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text('WINERBOX'),

Column(
  children: [
    Text('useful links'),
    Text('home'),
    Text('privacy policy'),
    Text('t&c'),
    Text('about us')
    
  ],
),

Column(
  children: [
    Text('contact us'),
    Text('email')
  ],
)

],
                  
                ),
              )
              
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
