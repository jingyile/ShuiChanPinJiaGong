package cn.action.modules.chart;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class test {
        public static void main(String[] args) throws ParseException {
            /*
             * ��������ʱ����
             */
            Date date = new Date();// ����Date���Ͷ���

            // ����SimpleDateFormat���Ͷ��� "yyyy-MM-dd HH:ss:mm.SSS"������ʽ���ֱ��ʾ������ʱ�������
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm.SSS");

            // ��������ʱ��
            String startTime = "1949-10-1 00:00:00.00";
            String endTime = "2018-8-21 20:00:00.00";

            // ������String���͵�ʱ��ת��ΪDate���ͣ��Ӷ������ֵ��parse()�����������ǽ�String���͵�ʱ�����ΪDate����
            Date d1 = df.parse(startTime);
            Date d2 = df.parse(endTime);

            System.out.println((((d2.getTime() - d1.getTime()) / (24 * 60 * 60 * 1000))) / 365 + "��");
            System.out.println((d2.getTime() - d1.getTime()) / (24 * 60 * 60 * 1000) + "��");
            System.out.println((((d2.getTime() - d1.getTime()) / (60 * 60 * 1000)) % 24) + "Сʱ");
            System.out.println((((d2.getTime() - d1.getTime()) / 1000) % 60) + "����");
            System.out.println(((d2.getTime() - d1.getTime()) / (60 * 1000)) % 60 + "��");
            System.out.println((((d2.getTime() - d1.getTime())) % 1000) + "����");
        }
}
