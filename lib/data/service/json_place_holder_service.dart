import 'package:dio_freezed_json/clients/place_holder_client.dart';
import 'package:dio_freezed_json/core/freezed/network_error.dart';
import 'package:dio_freezed_json/core/freezed/result.dart';
import 'package:dio_freezed_json/core/remote/layers/network_executor.dart';
import 'package:dio_freezed_json/data/models/login_model.dart';
import 'package:dio_freezed_json/data/models/user_model.dart';

class JsonPlaceHolderService {
  // Future<Result<List<PostModel>, NetworkError>> posts() async {
  //   return NetworkExecutor.execute<PostModel, List<PostModel>>(
  //       route: PlaceHolderClient.posts(), responseType: PostModel());
  // }

  Future<Result<List<LoginModel>, NetworkError>> login(
      {required String userName, required String password}) async {
    return NetworkExecutor.execute<LoginModel, List<LoginModel>>(
        route: PlaceHolderClient.login(userName: userName, password: password),
        responseType: LoginModel());
  }

  Future<Result<UserModel, NetworkError>> loginUI(
      {required String userName, required String password}) async {
    return NetworkExecutor.execute<UserModel, UserModel>(
        route:
            PlaceHolderClient.loginUI(userName: userName, password: password),
        responseType: UserModel());
  }
}
