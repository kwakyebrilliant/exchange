import 'package:exchange/screens/Money/MoneyScreen.dart';
import 'package:exchange/screens/Exchange/ExchangeScreen.dart';
import 'package:exchange/screens/Home/HomeScreen.dart';
import 'package:exchange/screens/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const MoneyScreen(),
    const ExchangeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0F14),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent, // Set the color to transparent
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xFF262B34),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  icon: const Icon(Icons.home_rounded),
                  color:
                      _currentIndex == 0 ? Colors.teal[500] : Colors.grey[500],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  icon: const Icon(Icons.wallet_rounded),
                  color:
                      _currentIndex == 1 ? Colors.teal[500] : Colors.grey[500],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  icon: const Icon(Icons.currency_exchange_rounded),
                  color:
                      _currentIndex == 2 ? Colors.teal[500] : Colors.grey[500],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  icon: const Icon(Icons.person_3_rounded),
                  color:
                      _currentIndex == 3 ? Colors.teal[500] : Colors.grey[500],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
