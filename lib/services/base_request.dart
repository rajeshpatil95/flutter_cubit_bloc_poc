import 'dart:convert';
import 'package:http/http.dart' as http;

import '../flavour/flavour_variables.dart';
import '../utils/mock_server.dart';

abstract class BaseRequest with MockServer {
  bool? authenticated;
  String? url;
  HttpMethod? method;
  dynamic body;
  Map<String, String>? headers;

  //Query Params
  Future<http.Response> constructAndExecuteRequest(
      {HttpMethod? method,
      String? endpoint,
      bool? authenticated,
      dynamic body}) async {
    await constructRequest(
        method: method!,
        endpoint: endpoint!,
        authenticated: authenticated!,
        body: body);
    return await executeRequest();
  }

  constructRequest(
      {HttpMethod? method,
      String? endpoint,
      bool? authenticated,
      dynamic body}) async {
    this.method = method;
    this.url = await getBaseUrl() + endpoint!;
    this.authenticated = authenticated;
    this.body = body;
    await setRequestHeaders();
  }

  executeRequest() async {
    switch (method) {
      case HttpMethod.get:
        return http.get(Uri.parse(url!), headers: headers);
      case HttpMethod.post:
        return http.post(Uri.parse(url!), headers: headers, body: body);
      case HttpMethod.put:
        return http.put(Uri.parse(url!), headers: headers, body: body);
      case HttpMethod.delete:
        return http.delete(Uri.parse(url!), headers: headers);
      default:
        return null;
    }
  }

  setRequestHeaders() async {
    headers = Map();
    if (authenticated!) {
      headers!["Authorization"] =
          "Bearer " + "61f58cc1-7c01-4e5c-8b52-4a73b7cec98d";
    }
    headers!["application-id"] = 'moneytap';
    headers!["app-version"] = 'v1.0.0';
    headers!["app-versionCode"] = 'v1.0.0';
    headers!["app-platform"] = 'android';
    headers!["device-id"] = '_t873';
    headers!["request-id"] = '_t7162';
    headers!["partner-code"] = '_t6152';
    headers!["Content-Type"] = 'application/json';
  }

  Future<String> getBaseUrl() async {
    return getFlavourVariable(FlavourVariable.baseUrl);
    // return 'https://wiremock-1535-review-master-wir-bohmwi.dsp-test.bt.com';
  }
}

enum HttpMethod { get, post, put, delete }
