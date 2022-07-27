

import 'package:template/src/features/home/data/models/listing.dart';

abstract class HomeRepository {
  /// Fetch data for current [type].
  Future<ListingData> getData(String type, String? after);
}