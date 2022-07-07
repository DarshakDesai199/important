import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

enum APIType { aGet, aPost }

class ApiService {
  var response;
  Future<dynamic> getResponse({
    required APIType apiType,
    required String url,
    Map<String, dynamic>? body,
  }) async {
    Map<String, String> header = {'content-type': 'application/json'};

    try {
      if (apiType == APIType.aGet) {
        final result = await http.get(Uri.parse(url));
        response = returnResponse(result.statusCode, result.body);
        print("REQUEST PARAMETER url  $url");
      } else if (apiType == APIType.aPost) {
        final result = await http.post(Uri.parse(url), body: body);

        log("resp${result.body}");

        response = returnResponse(result.statusCode, result.body);
        print(result.statusCode);
      }
    } catch (error) {
      return print(error);
    }
    return response;
  }

  returnResponse(int status, String result) {
    switch (status) {
      case 200:
        return jsonDecode(result);
      case 201:
        return jsonDecode(result);
      case 400:
        return jsonDecode(result);
      // throw BadRequestException('Bad Request');
      //   case 401:
      //     return Get.offAll(AskForLogin());
      //   case 403:
      //     return Get.offAll(AskForLogin());
      // case 404:
      // throw ServerException('Server Error');
      case 500:
      default:
      // throw FetchDataException('Internal Server Error');
    }
  }
}
