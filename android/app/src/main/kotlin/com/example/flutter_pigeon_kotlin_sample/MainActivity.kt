package com.example.flutter_pigeon_kotlin_sample

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.Pigeon
import io.flutter.plugins.Pigeon.JavaApi
import java.util.*

class MainActivity: FlutterActivity() {
    private class JavaApi: Pigeon.JavaApi{
        override fun sum(src: Pigeon.StrctSrc): Long {
            var result: Long = src.b?.let { src.a?.plus(it) } ?: 0
            val result2 :Long = result *3
            return result2
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        Pigeon.JavaApi.setup(flutterEngine.dartExecutor.binaryMessenger, JavaApi())
    }
}