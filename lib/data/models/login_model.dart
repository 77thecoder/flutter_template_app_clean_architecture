import 'package:amur/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required String token,
  }) : super(token: token);

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      LoginModel(token: json['token'] ?? json.toString());

  Map<String, dynamic> toJson() => {token: token};
}
