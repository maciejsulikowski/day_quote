import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(const QuotesState(id: 1, authorId: 1, quote: 'ds'));
}
