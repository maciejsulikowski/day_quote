import 'package:day_quote/app/features/quotes/quotes_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountPageContent extends StatefulWidget {
  const MyAccountPageContent({
    required this.user,
    super.key,
  });

  final User user;

  @override
  State<MyAccountPageContent> createState() => _MyAccountPageContentState();
}

class _MyAccountPageContentState extends State<MyAccountPageContent> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'DayQuote',
                style: GoogleFonts.orienta(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const QuotePage()));
              },
              child: const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.question_mark,
                  size: 150,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Text(
              'Kliknij wyżej żeby wylosować cytat!',
              style: GoogleFonts.orienta(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
