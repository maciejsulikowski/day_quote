import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/authors/authors_page.dart';
import 'package:day_quote/app/features/search/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  SearchPage({
    super.key,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  List<QuotesModel> filteredQuotesModel = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
          AuthorsRepository(RemoteAuthorsDataSource()),
          QuotesRepository(RemoteQuotesDataSource()))
        ..getQuotes(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          void updateList(String value) {
            setState(() {
              filteredQuotesModel = state.quotesModel
                  .where((quote) => quote.authorName
                      .toLowerCase()
                      .contains(value.toLowerCase()))
                  .toList();
            });
          }

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple[200],
            ),
            backgroundColor: Colors.purpleAccent[400],
            body: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Szukaj',
                      style: GoogleFonts.buenard(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      onChanged: (value) => updateList(value),
                      controller: controller,
                      style: GoogleFonts.buenard(fontSize: 18),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Wpisz danego autora...',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Lista autorów',
                      style: GoogleFonts.buenard(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredQuotesModel.length,
                      itemBuilder: (context, index) => ListTile(
                        title: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => AuthorsPage(
                                  quotesModel: filteredQuotesModel[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.amber,
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    filteredQuotesModel[index].authorName,
                                    style: GoogleFonts.buenard(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.arrow_right),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
