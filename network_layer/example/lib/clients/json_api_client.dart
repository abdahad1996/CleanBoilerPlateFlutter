import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network_layer/network_layer.dart';
part 'json_api_client.freezed.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  const PlaceHolderClient._() : super();
  const factory PlaceHolderClient.posts() = _Posts;
  const factory PlaceHolderClient.users() = _Users;

  const factory PlaceHolderClient.naw() = _Naw;

  @override
  String get baseURL => "https://jsonplaceholder.typicode.com/";

  @override
  Map<String, dynamic> get header => {"Content-Type": "application/json"};

  @override
  String get path {
    return this.when<String>(
      posts: () => 'posts/',
      users: () => 'users/',
      naw: () => 'naw/',
    );
  }

  @override
  String get method {
    return this.maybeWhen<String>(
      orElse: () => 'GET',
    );
  }

  @override
  Map<String, dynamic>? get body {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}
