import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/features/home/domain/usecases/get_data.dart';
import 'package:template/src/features/home/presentation/bloc/listing_event.dart';
import 'package:template/src/features/home/presentation/bloc/listing_state.dart';
import 'package:template/values/constants.dart';

class ListingBloc extends Bloc<ListingEvent, ListingState> {
  final GetDataUseCase getData;

  ListingBloc({
    required this.getData,
  }) : super(const InitialState()) {
    on<GetSubredditData>((event, emit) async {
      emit(Loading());
      try {
        final response = await getData(event.type, event.after);
        emit(Loaded(listingData: response));
      } on Exception catch (e) {
        emit(const Error(message: Constants.errorMessage));
      }
    });
  }
}
