import 'dart:convert';

import 'package:colorsoul/utils.dart';
import 'package:colorsoul/values/myColor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiHandler {
  static Future<dynamic> normalPost(body, url) async {
    var baseUrl = Uri.http(Utils.testIpUrl, "/${Utils.liveUrl}$url");
    // = http://68.183.81.169/admin/Api/login
    mainHeaderPost() => {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '4ccda7514adc0f13595a585205fb9761',
        };
    print("$baseUrl");

    http.Response response = await http.post(baseUrl,
        headers: mainHeaderPost(), body: jsonEncode(body));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      switch (response.statusCode) {
        case 400:
          return Fluttertoast.showToast(
            msg: 'Bad Response Format',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 401:
          return Fluttertoast.showToast(
            msg: 'Unauthorized Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 404:
          return Fluttertoast.showToast(
            msg: 'Not Found',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 500:
          return Fluttertoast.showToast(
            msg: 'Internal Server Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        default:
          return Fluttertoast.showToast(
            msg: 'Unknown Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
      }
    }
  }

  static Future<dynamic> post(body, url) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var deviceId = sharedPreferences.getString("deviceId");
    var userId = sharedPreferences.getString("userId");
    var baseUrl = Uri.http(Utils.testIpUrl, "/${Utils.liveUrl}$url");
    userPost() => {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '4ccda7514adc0f13595a585205fb9761',
          'User-Id': '$userId',
          'Device-Id': '$deviceId',
        };

    http.Response response =
        await http.post(baseUrl, headers: userPost(), body: jsonDecode(body));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      switch (response.statusCode) {
        case 400:
          return Fluttertoast.showToast(
            msg: 'Bad Response Format',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 401:
          return Fluttertoast.showToast(
            msg: 'Unauthorized User',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 404:
          return Fluttertoast.showToast(
            msg: 'Not Found',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 500:
          return Fluttertoast.showToast(
            msg: 'Internal Server Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        default:
          return Fluttertoast.showToast(
            msg: 'Unknown Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
      }
    }
  }

  static Future<dynamic> contentPost(body, url) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var deviceId = sharedPreferences.getString("deviceId");
    var userId = sharedPreferences.getString("userId");
    var baseUrl = Uri.http(Utils.testIpUrl, "/${Utils.liveUrl}$url");
    // print("device---->$deviceId");
    // print("device---->$userId");
    _appPost() => {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '4ccda7514adc0f13595a585205fb9761',
          'User-Id': '$userId',
          'Device-Id': '$deviceId',
        };

    http.Response response =
        await http.post(baseUrl, headers: _appPost(), body: jsonEncode(body));
    // print(jsonDecode(response.body));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      switch (response.statusCode) {
        case 400:
          return Fluttertoast.showToast(
            msg: 'Bad Response Format',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 401:
          return Fluttertoast.showToast(
            msg: 'Unauthorized User',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 404:
          return Fluttertoast.showToast(
            msg: 'Not Found',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 500:
          return Fluttertoast.showToast(
            msg: 'Internal Server Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        default:
          return Fluttertoast.showToast(
            msg: 'Unknown Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
      }
    }
  }

  static Future<dynamic> get(body, url) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    // var baseUrl = Uri.http("http://68.183.81.169/admin/Api");
    var baseUrl = Uri.http(Utils.testIpUrl, "/${Utils.liveUrl}");
    _mainHeaderGeet() => {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '4ccda7514adc0f13595a585205fb9761',
        };

    http.Response response = await http.post(baseUrl,
        headers: _mainHeaderGeet(), body: jsonDecode(body));
    // print(jsonDecode(response.body));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      switch (response.statusCode) {
        case 400:
          return Fluttertoast.showToast(
            msg: 'Bad Response Format',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 401:
          return Fluttertoast.showToast(
            msg: 'Unauthorized User',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 404:
          return Fluttertoast.showToast(
            msg: 'Not Found',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        case 500:
          return Fluttertoast.showToast(
            msg: 'Internal Server Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
        default:
          return Fluttertoast.showToast(
            msg: 'Unknown Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: MyColor.red,
            textColor: MyColor.white,
            fontSize: 16,
          );
      }
    }
  }

  static Map<String, String> getHeaders(userId, deviceId) {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '4ccda7514adc0f13595a585205fb9761',
      'User-Id': '${userId}',
      'Device-Id': '${deviceId}',
      // 'App-Version': Utils.currentVersionId
    };
    return headers;
  }
}
