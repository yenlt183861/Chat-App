import 'package:chat_app/src/datas/enums/verification_method.dart';
import 'package:chat_app/src/services/api/base_api.dart';
import 'package:chat_app/src/services/api/error_from_server.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  APIDataStore apiDataStore = APIDataStore();

  Future<void> login({required String email, required String password}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      throw 'error login';
      // final res = apiDataStore.resquestAPI(
      //   ApiURL.login,
      //   body: {
      //     'email': email,
      //     'password': password,
      //   },
      // );
      // return BaseResponse.fromJson(, fromJsonModel)
    } on DioError catch (e) {
      throw ErrorFromServer(message: e.message);
    } on ErrorFromServer {
      rethrow;
    }
  }

  Future<void> sendVerificationCode(
      {required VerificationMethod method, required String contact}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
    } on DioError catch (e) {
      throw ErrorFromServer(message: e.message);
    } on ErrorFromServer {
      rethrow;
    }
  }

  Future<void> verifyCode(
      {required VerificationMethod method, required String contact, required String code}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      // final res = apiDataStore.resquestAPI(
      //   ApiURL.login,
      //   body: {
      //     'email': email,
      //     'password': password,
      //   },
      // );
      // return BaseResponse.fromJson(, fromJsonModel)
    } on DioError catch (e) {
      throw ErrorFromServer(message: e.message);
    } on ErrorFromServer {
      rethrow;
    }
  }
}
