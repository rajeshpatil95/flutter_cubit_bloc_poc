import 'dart:convert';
import 'package:http/http.dart' as http;

mixin MockServer {
  Future<http.Response> mockApiCall(
      {String? endpoint,
      bool? authenticated,
      dynamic body,
      HttpMethod? method,
      CallBackDelay callBackDelay =
          CallBackDelay.CALLBACK_DELAY_MEDIUM}) async {
    await Future.delayed(Duration(milliseconds: callBackDelay.delay));
    return http.Response(jsonEncode(body), 200);
  }
}

enum CallBackDelay {
  CALLBACK_DELAY_NONE,
  CALLBACK_DELAY_SHORT,
  CALLBACK_DELAY_MEDIUM,
  CALLBACK_DELAY_LONG
}

enum HttpMethod { get, post, put, delete }

extension CallBackDelayExtension on CallBackDelay {
  int get delay {
    switch (this) {
      case CallBackDelay.CALLBACK_DELAY_NONE:
        return 0;
      case CallBackDelay.CALLBACK_DELAY_SHORT:
        return 2000;
      case CallBackDelay.CALLBACK_DELAY_MEDIUM:
        return 5000;
      case CallBackDelay.CALLBACK_DELAY_LONG:
        return 10000;
      default:
        return 1000;
    }
  }
}

extension ResponseExtension on http.Response {
  bool isSuccessful() => this.statusCode == 200;

  bool isError() => this.statusCode >= 400;

  bool isCustomError() => this.statusCode == 477;
}
