package com.store.flower.utils;

import java.util.Random;

public class UserUtil {

    public static String getCheckCode() {
        String string = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";//保存数字0-9 和 大小写字母
        char[] ch = new char[4]; //声明一个字符数组对象ch 保存 验证码
        for (int i = 0; i < 4; i++) {
            Random random = new Random();//创建一个新的随机数生成器
            int index = random.nextInt(string.length());//返回[0,string.length)范围的int值    作用：保存下标
            ch[i] = string.charAt(index);//charAt() : 返回指定索引处的 char 值   ==》保存到字符数组对象ch里面
        }
        String result = String.valueOf(ch);
        return result;
    }
}
