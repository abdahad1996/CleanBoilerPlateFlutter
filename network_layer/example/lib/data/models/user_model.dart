 import 'package:json_annotation/json_annotation.dart';
import 'package:network_layer/network_layer.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends BaseNetworkModel<UserModel>{

  late int id;
  late String name;
  late String username;

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel.fromJson(json);
  }

}