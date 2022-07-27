

import 'package:template/src/features/home/data/models/listing.dart';

abstract class ListingState {
  const ListingState();
}

class InitialState extends ListingState {
  const InitialState();
}

class Loading extends ListingState {}

class Loaded extends ListingState {
  final ListingData listingData;

  const Loaded({required this.listingData});
}

class Error extends ListingState {
  final String message;

  const Error({required this.message});
}
