

import 'package:template/src/core/network/exceptions.dart';
import 'package:template/src/core/network/http_client.dart';
import 'package:template/src/features/home/data/models/listing.dart';
import 'package:template/values/constants.dart';

abstract class HomeRemoteDataSource {
  /// Returns the data from the reddit backend corresponding to [type].
  /// The argument [after] determines from which position
  /// the data should return in case of pagination.
  Future<ListingData> getData(String type, String? after);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final HttpClient _httpClient;

  HomeRemoteDataSourceImpl(this._httpClient);

  @override
  Future<ListingData> getData(String type, String? after) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      type,
      queryParameters: {
        'after': after,
        'limit': 20,
      },
    );

    if (response.statusCode != 200) {
      throw const NotFound(Constants.errorMessage);
    }

    final getDataResult = response.data?['data'] as Map<String, dynamic>;

    return ListingData.fromJson(
      getDataResult,
    );
  }
}
