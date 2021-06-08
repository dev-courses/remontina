import 'package:flutter/material.dart';
import 'package:remontina/presentation/ui/app_colors.dart';

class RepairsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RepairsScreenState();
}

class _RepairsScreenState extends State<RepairsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorGreen,
      appBar: AppBar(
        backgroundColor: AppColors.boxDecorationBigCardGreen,
      ),
      body: Text('Ремонты'),
    );
  }
}
