import 'package:flutter/material.dart';

class RepairsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RepairsScreenState();
}

class _RepairsScreenState extends State<RepairsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('Ремонты'),
    );
  }
}
