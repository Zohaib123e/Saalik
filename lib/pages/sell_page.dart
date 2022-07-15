import 'package:flutter/material.dart';
class Sell_page extends StatefulWidget {
  const Sell_page({Key? key}) : super(key: key);

  @override
  State<Sell_page> createState() => _Sell_pageState();
}

class _Sell_pageState extends State<Sell_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sell page')),
    );
  }
}