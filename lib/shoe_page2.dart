import 'dart:ui';

import 'package:futurek/homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoePage2 extends StatelessWidget {
  final CardItem2 item2;

  const ShoePage2({
    Key? key,
    required this.item2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item2.title2),
      ),

body: Column(
  children: [
    AspectRatio(aspectRatio: 4 / 3,
    child: Image.network(item2.urlImage2,
    fit: BoxFit.cover,
    ),
    



    ),
    SizedBox(height: 8,),

    Text(item2.title2,
style: TextStyle(fontSize: 32,fontWeight: FontWeight.w200,),)

    
  ],
),

    );
  }
}
  