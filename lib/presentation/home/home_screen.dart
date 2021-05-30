import 'package:flutter/material.dart';
import 'package:remontina/presentation/home/widgets/big_card.dart';
import 'package:remontina/presentation/ui/app_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorGreen,
      appBar: AppBar(
        backgroundColor: AppColors.boxDecorationBigCardGreen,
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          BigCard(
            title: 'Новый ремонт',
            description:
                'Описание описание описание описание описание описание описание описание описание описание описание описание.',
            imageUrl: 'assets/images/remont_1.jpg',
          ),
        ],
      ),
    );
  }
}
