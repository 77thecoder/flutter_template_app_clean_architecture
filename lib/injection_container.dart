import 'package:amur/core/usecase/fetch_token.dart';
import 'package:amur/data/datasources/local_data_source.dart';
import 'package:amur/data/datasources/local_data_source_impl.dart';
import 'package:amur/data/datasources/remote_data_sorce_impl.dart';
import 'package:amur/data/datasources/remote_data_source.dart';
import 'package:amur/data/repositories/repositories_impl.dart';
import 'package:amur/domain/repositories/repositories.dart';
import 'package:amur/network/rest_client.dart';
import 'package:amur/presentation/login/bloc/login_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  initInjections(sl);
}

Future<void> initInjections(GetIt serviceLocator) async {
  // Blocs
  sl.registerFactory(() => LoginBloc(fetchToken: sl()));

  // Use cases
  sl.registerLazySingleton(() => FetchToken(sl()));

  //Repositories
  sl.registerLazySingleton<Repository>(
        () => RepositoryImpl(
      localDataSource: sl(),
      remoteDataSource: sl(),
    ),
  );

  //Data sources
  sl.registerLazySingleton<RemoteDataSource>(
        () => RemoteDataSourceImpl(
      dio: sl(),
    ),
  );

  sl.registerLazySingleton<LocalDataSource>(
        () => LocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );

  // External
  final SharedPreferences sharedPreferences =
  await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  final Dio dio = Dio();

  sl.registerLazySingleton(() => RestClient(sharedPreferences: sl(), dio: dio));
}