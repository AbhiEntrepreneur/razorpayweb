import 'dart:ui';
import 'dart:developer';
import 'package:futurek/homepage.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:futurek/shoe_page.dart';// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element




class Payments extends StatefulWidget {

  

  const Payments({Key? key}) : super(key: key);

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
            amount: 1000,
            name: '',
            description: "Test Payment",
            image: "https://i.imgur.com/3g7nmJC.png",
            prefill: const PrefillData(
              name: "Razorpay",
              email: "rzp@gmail.com",
              contact: "9876543210",
            ),
            colorhex: "#FF0000",
          ),
          onPaymentSuccess: (String paymentId) {
            print("Payment Success");
            log(paymentId);
          },
          onPaymentError: (String error) {
            print("Payment Error");
          },
        ),
      ),
    );
  }
}
