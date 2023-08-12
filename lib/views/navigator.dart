import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_app/utils/constants.dart';
import 'package:shoe_app/views/cart/widgets/cart_view.dart';
import 'package:shoe_app/views/view.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  List<Widget> _screens = [
    HomeView(),
    CartView(),
    Container(
      color: Colors.deepPurpleAccent,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //_pageController.jumpToPage(_selectedIndex);
    _pageController.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 250), curve: Curves.linear);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 27.0,
        bubbleCurve: Curves.linear,
        selectedColor: AppConstantsColor.materialButtonColor,
        strokeColor: AppConstantsColor.materialButtonColor,
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        scaleFactor: 0.5,
        items: [
          CustomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
          ),
          CustomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
          ),
          CustomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
    );
  }
}
