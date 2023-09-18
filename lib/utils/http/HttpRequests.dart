/*
import 'package:http/http.dart';
import 'dart:convert' as convert;
import 'package:agroapp_trc/utils/AppUtils.dart';

class LoboHttp {
  static _makeGetRequest(String baseUrl, String endPoint,
      Map<String, String> headers, Map<String, String>? queryParameters) async {
    try {
      var url = Uri.parse(
          '$baseUrl$endPoint${AppUtils().generateGetUrl(queryParameters)}');
      Response response = await get(url, headers: headers);
      /*if (response.statusCode != 200) {
        throw Exception(response.body);
      }*/
      return _processResponse(response);
    } catch (e) {}
  }

  static _makePostRequest(
      String baseUrl,
      String endPoint,
      Map<String, String> headers,
      Map<String, String>? queryParameters,
      Object? body1) async {
    try {
      var url = Uri.parse(
          '$baseUrl$endPoint${AppUtils().generateGetUrl(queryParameters)}');
      Response response = body1 == null
          ? await post(url, headers: headers)
          : await post(url, headers: headers, body: convert.jsonEncode(body1));
      return _processResponse(response);
    } catch (e) {
      return e.toString();
    }
  }

  static _processResponse(Response response) {
    try {
      //print(response.body);
      return convert.jsonDecode(convert.utf8.decode(response.bodyBytes))
          as Map<String, dynamic>;
    } catch (e) {}
  }

  static Future<Map<String, dynamic>> sendGet(String baseUrl, String endPoint,
      Map<String, String> headers, Map<String, String>? queryParameters) async {
    return await _makeGetRequest(baseUrl, endPoint, headers, queryParameters);
  }

  static Future<Map<String, dynamic>> sendPost(
      String baseUrl,
      String endPoint,
      Map<String, String> headers,
      Map<String, String>? queryParameters,
      Object? body) async {
    return await _makePostRequest(
        baseUrl, endPoint, headers, queryParameters, body);
  }
}
*/