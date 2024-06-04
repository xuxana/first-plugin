package com.yoxpreso.plugins.firstplugin;

import android.util.Log;

public class FirstPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
