

import 'package:template/src/features/home/data/models/listing.dart';
import 'package:template/src/features/home/domain/repositories/home_repository.dart';

/// Fetch list of items for given subreddit [type].
abstract class GetDataUseCase {
  Future<ListingData> call(String type, String? after);
}

class GetDataUseCaseImpl implements GetDataUseCase {
  final HomeRepository repository;

  GetDataUseCaseImpl(this.repository);

  @override
  Future<ListingData> call(String type, String? after) async =>
      repository.getData(type, after);
}
