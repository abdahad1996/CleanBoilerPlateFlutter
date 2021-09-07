
import 'package:example/clients/json_api_client.dart';
import 'package:example/data/models/post_model.dart';
import 'package:network_layer/network_layer.dart';

class JsonPlaceHolderService{
  
  Future<Result<List<PostModel>,NetworkError>> posts() async{
   return NetworkExecuter.execute<PostModel,List<PostModel>>(route: PlaceHolderClient.posts(), responseType: PostModel());
  }
}