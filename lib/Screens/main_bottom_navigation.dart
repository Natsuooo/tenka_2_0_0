import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/bottom_navigation_model.dart';

class MainBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavigationModel =
        Provider.of<BottomNavigationModel>(context, listen: true);
    return Scaffold(
      body: Center(
        child: bottomNavigationModel.getSelectedScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('ホーム'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('スター'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNavigationModel.selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (index) {
          bottomNavigationModel.change(index);
        },
      ),
    );
  }
}