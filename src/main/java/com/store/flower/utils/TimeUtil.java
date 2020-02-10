package com.store.flower.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {

    public static String nowTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String time = sdf.format(date.getTime());
        return time;
    }
}
