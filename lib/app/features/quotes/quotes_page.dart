import 'dart:math';
import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/authors/authors_page.dart';
import 'package:day_quote/app/features/quotes/cubit/quotes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuotesCubit(QuotesRepository(RemoteQuotesDataSource()))..getQuotes(),
      child: BlocBuilder<QuotesCubit, QuotesState>(
        builder: (context, state) {
          final quotesModel = state.quotesModel;
          if (quotesModel.isEmpty) {
            return Scaffold(
              body: Container(
                color: Colors.purpleAccent,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Ładowanie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          final result = quotesModel[Random().nextInt(quotesModel.length)];
          return Scaffold(
            backgroundColor: Colors.purpleAccent,
            appBar: AppBar(
              title: const Text(
                'Powrót',
              ),
              backgroundColor: Colors.purple[300],
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    result.authorName,
                    style: GoogleFonts.buenard(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    result.quote,
                    style: GoogleFonts.buenard(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => AuthorsPage(
                          quotesModel: result,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Poznaj historię autora 🔍',
                    style: GoogleFonts.buenard(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
