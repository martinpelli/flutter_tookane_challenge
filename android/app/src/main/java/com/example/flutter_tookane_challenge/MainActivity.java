package com.example.flutter_tookane_challenge;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

    private Intent forService;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        forService = new Intent(MainActivity.this, MyService.class);

        new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "timerService").setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                if(call.method.equals("startService")){
                    startService();
                    result.success("Service Started");
                }
            }
        });
    }

    private void startService(){
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.O){
            startForegroundService(forService);
        }else{
            startService(forService);
        }
    }
}