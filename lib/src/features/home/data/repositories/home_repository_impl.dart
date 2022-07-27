

import 'package:template/src/features/home/data/datasources/home_remote_datasource.dart';
import 'package:template/src/features/home/data/models/listing.dart';
import 'package:template/src/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.remoteDataSource,
  });

  /// Calls data for [type] and returns the response from API
  @override
  Future<ListingData> getData(String type, String? after) async {
    final response = await remoteDataSource.getData(type, after);
    return response;
  }
}
