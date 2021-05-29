import 'package:flutter/material.dart';
import 'package:remontina/presentation/home/widgets/big_card.dart';

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
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        children: [
          BigCard(
            title: 'Новый ремонт',
            description:
                'Описание... описание... описание... описание... описание... описание... описание... описание... описание... описание.... описание... описание... а это не должно влезть.',
            imageUrl: 'assets/images/remont_1.jpg',
          ),
        ],
      ),
    );
  }
}
