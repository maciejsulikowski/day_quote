import 'package:day_quote/app/features/auth/user_profile.dart';
import 'package:day_quote/app/features/my_account/my_account_page_content.dart';
import 'package:day_quote/app/features/home/home_page.dart';
import 'package:day_quote/app/features/quotes/quotes_page.dart';
import 'package:day_quote/app/features/search/search_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return MyAccontPageContent(
            user: widget.user,
          );
        }
        if (currentIndex == 1) {
          return SearchPage();
        }
        if (currentIndex == 2) {
          return const UserProfile();
        }

        return MyAccontPageContent(user: widget.user);
      }),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.purple,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          }); //ss
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Cytaty',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Szukaj',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Konto',
          ),
        ],
      ),
    );
  }
}
