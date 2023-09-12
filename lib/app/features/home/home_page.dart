import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/auth/user_profile.dart';
import 'package:day_quote/app/features/my_account/my_account_page_content.dart';
import 'package:day_quote/app/features/search/cubit/search_cubit.dart';
import 'package:day_quote/app/features/search/search_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/remote_data_sources/remote_quotes_data_source.dart';

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
          return MyAccountPageContent(
            user: widget.user,
          );
        }
        if (currentIndex == 1) {
          return const SearchPage();
        }
        if (currentIndex == 2) {
          return const UserProfile();
        }

        return MyAccountPageContent(user: widget.user);
      }),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.purple,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
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
