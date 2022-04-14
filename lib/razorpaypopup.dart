import 'dart:ui';
import 'dart:developer';
import 'package:futurek/homepage.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:futurek/razorsho_e_page.dart'; // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

class Payments extends StatefulWidget {
  Payments({
    Key? key,
    required this.title,
    required this.urlImage,
    required this.subtitle,
    required this.textEditingController1,
     required this.textEditingController2,
  }) : super(key: key);
  String title;
  String urlImage;
  String subtitle;
  String textEditingController1;
    String textEditingController2;

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RazorpayWeb(
          rzpKey: "rzp_test_DNaSxot4oJHykG", // Enter Your Razorpay Key Here
          options: RzpOptions(
            amount: double.parse(widget.subtitle) * 100,
            name: widget.title,
            image: widget.urlImage,
            prefill:  PrefillData(
              name: '',
              email: widget.textEditingController1,
              contact: widget.textEditingController2,
            ),
            colorhex: "#FF0000",
          ),
          onPaymentSuccess: (String paymentId) {
            log(paymentId);
          },
          onPaymentError: (String error) {},
        ),
      ),
    );
  }
}
