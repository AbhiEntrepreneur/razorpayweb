import 'dart:ui';

import 'package:futurek/homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoePage3 extends StatelessWidget {
  final CardItem3 item3;

  const ShoePage3({
    Key? key,
    required this.item3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item3.title3),
      ),

body: Column(
  children: [
    AspectRatio(aspectRatio: 4 / 3,
    child: Image.network(item3.urlImage3,
    fit: BoxFit.cover,
    ),
    



    ),
    SizedBox(height: 8,),

    Text(item3.title3,
style: TextStyle(fontSize: 32,fontWeight: FontWeight.w200,),)

    
  ],
),

    );
  }
}
  