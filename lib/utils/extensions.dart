import 'package:http/http.dart' as http;
import 'mock_server.dart';

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
