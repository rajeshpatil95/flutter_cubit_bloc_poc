package com.example.flutter_cubit_bloc_poc

import android.os.Handler
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    private val methodChannelA: String = "BB_Aquisition";
    private val methodChannelB: String = "androidToFlutter";

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, methodChannelA).setMethodCallHandler { call, result ->
            when (call.method) {
                "getUserName" -> {
                    result.success("rajekripatil@gmail.com")
                }
            }
        }

        var methodChannelFromAndroid:
                MethodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, methodChannelB);
        Handler().postDelayed({
            methodChannelFromAndroid.invokeMethod("publish", "How to call flutter from android")
        }, 4000)
    }
}