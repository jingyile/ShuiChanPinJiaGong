package cn.action.modules.chart;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class test {
        public static void main(String[] args) throws ParseException {
            /*
             * 计算两个时间间隔
             */
            Date date = new Date();// 创建Date类型对象

            // 创建SimpleDateFormat类型对象、 "yyyy-MM-dd HH:ss:mm.SSS"是正则式，分别表示年月日时分秒毫秒
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm.SSS");

            // 定义两个时间
            String startTime = "1949-10-1 00:00:00.00";
            String endTime = "2018-8-21 20:00:00.00";

            // 将两个String类型的时间转换为Date类型，从而计算差值、parse()方法的作用是将String类型的时间解析为Date类型
            Date d1 = df.parse(startTime);
            Date d2 = df.parse(endTime);

            System.out.println((((d2.getTime() - d1.getTime()) / (24 * 60 * 60 * 1000))) / 365 + "年");
            System.out.println((d2.getTime() - d1.getTime()) / (24 * 60 * 60 * 1000) + "天");
            System.out.println((((d2.getTime() - d1.getTime()) / (60 * 60 * 1000)) % 24) + "小时");
            System.out.println((((d2.getTime() - d1.getTime()) / 1000) % 60) + "分钟");
            System.out.println(((d2.getTime() - d1.getTime()) / (60 * 1000)) % 60 + "秒");
            System.out.println((((d2.getTime() - d1.getTime())) % 1000) + "毫秒");
        }
}
