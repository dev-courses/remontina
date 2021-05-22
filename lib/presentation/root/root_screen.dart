import 'package:flutter/material.dart';
import 'package:remontina/internal/routes/routes.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  GlobalKey<NavigatorState> primaryNavigatorKey = GlobalKey(debugLabel: 'primary_navigator');

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: primaryNavigatorKey,
        onGenerateRoute: Routes.router.generator,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.imagesearch_roller),
          label: 'Ремонты',
        ),
      ],
      currentIndex: _index,
      onTap: _onTap,
    );
  }

  void _onTap(int index) {
    if (index == _index) {
      return;
    }
    setState(() {
      _index = index;
    });

    if (index == 0) {
      primaryNavigatorKey.currentState?.pushReplacementNamed(Routes.to.main());
    } else if (index == 1) {
      primaryNavigatorKey.currentState?.pushReplacementNamed(Routes.to.repairs());
    }
  }
}
