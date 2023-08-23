import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day_quote/app/features/auth/user_profile.dart';
import 'package:day_quote/app/features/quotes/quotes_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart'
    as firebase_core;

class HomePage extends StatelessWidget {
  HomePage({
    required this.currentUser,
    super.key,
  });

  final User currentUser;
  final userQuery = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text('User'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const UserProfile(),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
            ),
          )
        ],
      ),
      backgroundColor: Colors.purpleAccent,
      body: firebase_core.FirestoreListView<Map<String, dynamic>>(
        query: userQuery,
        itemBuilder: (context, snapshot) {
          Map<String, dynamic> user = snapshot.data();
          return Text(
            'Username: is ${user['name']}',
          );
        },
      ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(10.0),
      //         child: Text(
      //           'DayQuote',
      //           style: GoogleFonts.orienta(
      //             fontSize: 40,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 50),
      //       InkWell(
      //         onTap: () {
      //           Navigator.of(context)
      //               .push(MaterialPageRoute(builder: (_) => const QuotePage()));
      //         },
      //         child: const CircleAvatar(
      //           radius: 100,
      //           backgroundColor: Colors.black,
      //           child: Icon(
      //             Icons.question_mark,
      //             size: 150,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 80),
      //       Text(
      //         'Kliknij wyżej żeby wylosować cytat!',
      //         style: GoogleFonts.orienta(
      //           fontSize: 22,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
