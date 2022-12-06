import 'dart:io';
import 'package:flutter/services.dart';

/// API between Native-Flutter.[MethodChannel], [EventChannel], [BasicMessageChannel]
/// To support a new method, declare it in [NativeMethod] and provide the method name in either [_getAndroidMethodName] or [_getIOSMethodName]
/// To invoke a native method, call [invokeMethodWithArgs].
/// To get a value from the native platform, call the appropriate getValue method.

class NativePlatform {
  static const nativePlatform = MethodChannel("BB_Aquisition");

  static Future<T?> invokeMethodWithArgs<T>(NativeMethod nativeMethod,
      [dynamic args]) {
    return nativePlatform.invokeMethod(_getMethodName(nativeMethod)!, args);
  }

  static Future<T?> getValue<T>(NativeMethod nativeMethod) {
    return nativePlatform.invokeMethod(_getMethodName(nativeMethod)!);
  }

  static Future<T?> getValueWithArgs<T>(NativeMethod nativeMethod,
      [dynamic args]) {
    return nativePlatform.invokeMethod(_getMethodName(nativeMethod)!, args);
  }

  static Future<List<String>?> getList(NativeMethod nativeMethod) {
    return nativePlatform.invokeListMethod(_getMethodName(nativeMethod)!);
  }

  static Future<Map<String, String>?> getMap(NativeMethod nativeMethod) {
    return nativePlatform.invokeMapMethod(_getMethodName(nativeMethod)!);
  }

  static Future<Map<String, String>?> getMapWithArgs(NativeMethod nativeMethod,
      [dynamic args]) {
    return nativePlatform.invokeMapMethod(_getMethodName(nativeMethod)!, args);
  }

  static String? _getMethodName(NativeMethod nativeMethod) {
    if (Platform.isAndroid) {
      return _getAndroidMethodName(nativeMethod);
    } else if (Platform.isIOS) {
      return _getIOSMethodName(nativeMethod);
    }

    return null;
  }

  static String? _getAndroidMethodName(NativeMethod nativeMethod) {
    switch (nativeMethod) {
      case NativeMethod.OAuthToken:
        return "getOAuthToken";

      case NativeMethod.BaseUrl:
        return "getBaseUrl";

      case NativeMethod.RequestHeaders:
        return "getRequestHeaders";

      case NativeMethod.LogEvent:
        return "logEvent";

      case NativeMethod.LogException:
        return "logException";

      case NativeMethod.GetUserName:
        return "getUserName";

      default:
        print("Invalid choice");
    }

    return null;
  }

  static String? _getIOSMethodName(NativeMethod nativeMethod) {
    switch (nativeMethod) {
      case NativeMethod.OAuthToken:
        return "getOAuthToken";

      case NativeMethod.BaseUrl:
        return "getBaseUrl";

      case NativeMethod.RequestHeaders:
        return "getRequestHeaders";

      case NativeMethod.LogEvent:
        return "logEvent";

      case NativeMethod.LogException:
        return "logException";

      case NativeMethod.GetUserName:
        return "getUserName";

      default:
        print("Invalid choice");
    }

    return null;
  }
}

enum NativeMethod {
  OAuthToken,
  BaseUrl,
  RequestHeaders,
  LogEvent,
  LogException,
  GetUserName
}
