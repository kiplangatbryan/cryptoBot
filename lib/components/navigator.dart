import 'package:Rook/components/constants.dart';
import 'package:Rook/screens/alert/alert.dart';
import 'package:Rook/screens/chart/chart.dart';
import 'package:Rook/screens/home/home.dart';
import 'package:Rook/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class PageRenderer extends StatefulWidget {
  const PageRenderer({Key? key}) : super(key: key);

  @override
  State<PageRenderer> createState() => _PageRenderer();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PageRenderer extends State<PageRenderer> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChartPage(),
    AlertPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        enableFeedback: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: kTextColor,
        ),
        items: [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(
              Icons.dashboard_outlined,
              color: kTextMediumColor,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Charts',
            icon: Icon(
              Icons.bar_chart,
              color: kTextMediumColor,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Alerts',
            icon: Icon(
              Icons.notifications_active,
              color: kTextMediumColor,
              size: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(
              Icons.person_outline_outlined,
              color: kTextMediumColor,
              size: 32,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
