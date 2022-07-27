import 'package:get_it/get_it.dart';
import 'package:template/src/core/network/http_client.dart';
import 'package:template/src/features/home/data/datasources/home_remote_datasource.dart';
import 'package:template/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:template/src/features/home/domain/repositories/home_repository.dart';
import 'package:template/src/features/home/domain/usecases/get_data.dart';
import 'package:template/src/features/home/presentation/bloc/listing_bloc.dart';

// service locator
final sl = GetIt.instance;

/// Initializes dependencies on app start
Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => ListingBloc(
      getData: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton<GetDataUseCase>(
      () => GetDataUseCaseImpl(sl<HomeRepository>()));

  // Repository
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: sl<HomeRemoteDataSource>()));

  // Data sources
  sl.registerFactory<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(sl<HttpClient>()),
  );

  // Core
  sl.registerLazySingleton<HttpClient>(() => HttpClient());
}
