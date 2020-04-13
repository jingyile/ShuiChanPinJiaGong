//package cn.action.modules.chart;
//
//import org.springframework.stereotype.Service;
//
//@Service
//public class ColumnaServicerImp implements ColumnarService {
//
//    //从柱状图工具类里面获取创建的Columnar柱状图
//
//    public JFreeChart createColumnarTools() {
//        // TODO Auto-generated method stub
//        // 获得数据
//        CategoryDataset dataset = getDataSet();
//        // 获取柱状图工具类创建的柱状图，（将数据集传入）
//        JFreeChart chart = ColumnarTools.createCoColumnar(dataset);
//        return chart;
//    }
//
//    //获取一个演示用的组合数据集对象 为柱状图添加数据
//
//    private static CategoryDataset getDataSet() {
//        // 数据可以从数据库中得到
//        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
//        dataset.addValue(88, "外评", "上风港");
//        dataset.addValue(86, "内评", "上风港");
//        dataset.addValue(85, "外评", "瑞安");
//        dataset.addValue(84, "内评", "瑞安");
//        dataset.addValue(70, "外评", "花郡");
//        dataset.addValue(65, "内评", "花郡");
//        dataset.addValue(90, "外评", "IFS");
//        dataset.addValue(88, "内评", "IFS");
//        dataset.addValue(80, "外评", "万达");
//        dataset.addValue(75, "内评", "万达");
//        return dataset;
//    }
