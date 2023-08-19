import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: const Text(
          'Powrót',
        ),
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Autor🔍',
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
