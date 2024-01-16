import 'package:crptoproject/View/homeScreen.dart';
import 'package:crptoproject/constants/appColors.dart';
import 'package:crptoproject/customWidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:sizer/sizer.dart';

class SnakeNavigationBarExampleScreen extends StatefulWidget {
  const SnakeNavigationBarExampleScreen({Key? key}) : super(key: key);

  @override
  _SnakeNavigationBarExampleScreenState createState() =>
      _SnakeNavigationBarExampleScreenState();
}

class _SnakeNavigationBarExampleScreenState
    extends State<SnakeNavigationBarExampleScreen> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  Color selectedColor = AppColors.primaryColor;
  Color unselectedColor = Colors.white70;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  final _page = [
    HomeScreen(),
    Center(child: myText(text: 'Markets',color: Colors.white)),
    Center(child: myText(text: 'Trades',color: Colors.white)),
    Center(child: myText(text: 'Futures',color: Colors.white)),
    Center(child: myText(text: 'Wallets',color: Colors.white)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: SafeArea(child: _page[_selectedItemPosition]),
      bottomNavigationBar: SnakeNavigationBar.color(
        backgroundColor: Colors.grey.withOpacity(0.3),

        shadowColor: Colors.grey,
        // height: 80,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        shape: RoundedRectangleBorder(borderRadius: _borderRadius),
        padding: EdgeInsets.zero,

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.circle ? Colors.white : null,
        unselectedItemColor: unselectedColor,

        ///configuration for SnakeNavigationBar.gradient
        // snakeViewGradient: selectedGradient,
        // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        // unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: true,
        showSelectedLabels: true,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 2.2.h,
                color:
                    _selectedItemPosition == 0 ? Colors.white : Colors.white54,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/trend.png',
                height: 2.2.h,
                color:
                    _selectedItemPosition == 1 ? Colors.white : Colors.white54,
              ),
              label: 'Markets'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/future.png',
                height: 2.2.h,
                color:
                    _selectedItemPosition == 2 ? Colors.white : Colors.white54,
              ),
              label: 'Trades'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/trading.png',
                height: 2.2.h,
                color:
                    _selectedItemPosition == 3 ? Colors.white : Colors.white54,
              ),
              label: 'Futures'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/wallet.png',
                height: 2.2.h,
                color:
                    _selectedItemPosition == 4 ? Colors.white : Colors.white54,
              ),
              label: 'wallets')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }
}
