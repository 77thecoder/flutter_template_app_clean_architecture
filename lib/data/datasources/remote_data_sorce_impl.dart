import 'package:amur/data/datasources/remote_data_source.dart';
import 'package:amur/data/models/login_model.dart';
import 'package:amur/network/rest_client.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final RestClient dio;

  RemoteDataSourceImpl({required this.dio});

  @override
  Future<LoginModel> login(final String username, final String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

}