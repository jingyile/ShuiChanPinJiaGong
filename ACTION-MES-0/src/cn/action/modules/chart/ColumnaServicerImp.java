//package cn.action.modules.chart;
//
//import org.springframework.stereotype.Service;
//
//@Service
//public class ColumnaServicerImp implements ColumnarService {
//
//    //����״ͼ�����������ȡ������Columnar��״ͼ
//
//    public JFreeChart createColumnarTools() {
//        // TODO Auto-generated method stub
//        // �������
//        CategoryDataset dataset = getDataSet();
//        // ��ȡ��״ͼ�����ഴ������״ͼ���������ݼ����룩
//        JFreeChart chart = ColumnarTools.createCoColumnar(dataset);
//        return chart;
//    }
//
//    //��ȡһ����ʾ�õ�������ݼ����� Ϊ��״ͼ�������
//
//    private static CategoryDataset getDataSet() {
//        // ���ݿ��Դ����ݿ��еõ�
//        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
//        dataset.addValue(88, "����", "�Ϸ��");
//        dataset.addValue(86, "����", "�Ϸ��");
//        dataset.addValue(85, "����", "��");
//        dataset.addValue(84, "����", "��");
//        dataset.addValue(70, "����", "����");
//        dataset.addValue(65, "����", "����");
//        dataset.addValue(90, "����", "IFS");
//        dataset.addValue(88, "����", "IFS");
//        dataset.addValue(80, "����", "���");
//        dataset.addValue(75, "����", "���");
//        return dataset;
//    }
