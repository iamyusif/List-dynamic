import 'package:flutter/material.dart';


class Detay extends StatefulWidget {

  String ulkeAdi;

// with required parameter
  Detay({required this.ulkeAdi});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay"),
      ),
      body: Center(
        child: Text("${widget.ulkeAdi}",
        style: TextStyle(
          fontSize: 30,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
        ),),
    );
  }
}
