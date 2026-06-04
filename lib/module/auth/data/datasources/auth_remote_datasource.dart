import 'package:recipe_app/core/network/service/network_service.dart';

abstract class AuthRemoteDataSource {}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final NetworkService service;

  AuthRemoteDataSourceImpl(this.service);
}
