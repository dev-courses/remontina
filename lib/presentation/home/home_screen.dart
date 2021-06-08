import 'package:flutter/material.dart';
import 'package:remontina/internal/routes/routes.dart';
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
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          BigCard(
            title: 'Новый ремонт',
            description: 'Создайте новый ремонт - выберите тип, количество комнат и примерный бюджет.',
            onTap: _goToNewRepair,
          ),
        ],
      ),
    );
  }

  void _goToNewRepair() {
    print('dasdsd');
    Navigator.pushNamed(context, Routes.to.newRepair());
  }
}
