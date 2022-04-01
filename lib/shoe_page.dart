// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:futurek/homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoePage extends StatelessWidget {
  final CardItem item;

  const ShoePage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),

body: Column(
  children: [
    AspectRatio(aspectRatio: 4 / 3,
    child: Image.network(item.urlImage,
    fit: BoxFit.cover,
    ),
    



    ),
    SizedBox(height: 8,),

    Text(item.title,
style: TextStyle(fontSize: 32,fontWeight: FontWeight.w200,),)

    
  ],
),

    );
  }
}
  