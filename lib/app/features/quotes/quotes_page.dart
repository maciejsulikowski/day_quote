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
                for (final quote in state.quotesModel) ...[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      quote.quote,
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
                            quotesModel: quote,
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
              ],
            ),
          );
        },
      ),
    );
  }
}



// ListView.builder(
//           itemCount: quotesModel.length,
//           itemBuilder: (context, index) {
//             final quote = quotesModel[index];
      
//             return Text(
//               quote.quote,
//               style: GoogleFonts.roboto(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             );
//           },
//         ),
// class ContentWidget extends StatelessWidget {
//   const ContentWidget({
//     required this.quotesModelList,
//     super.key,
//   });

//   final List<QuotesModel> quotesModelList;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purpleAccent,
//       appBar: AppBar(
//         title: const Text(
//           'Powrót',
//         ),
//         backgroundColor: Colors.purple[300],
//       ),
//       body: Center(
//         child: ListView(
//           children: [
            
//             Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: Text(
//                 quotesModel.quote,
//                 style: GoogleFonts.roboto(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 80),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (_) => const AuthorsPage()));
//               },
//               child: Text(
//                 'Poznaj historię autora 🔍',
//                 style: GoogleFonts.buenard(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
