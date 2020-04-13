//package cn.action.modules.chart;
//
//public class ColumnarTools {
//
//    //创建一个柱状图
//
//    //@param dataset
//  //  柱状图数据
//    // @return
//
//    public static JFreeChart createCoColumnar(CategoryDataset dataset) {
//        // 创建柱状图
//        JFreeChart chart = ChartFactory.createBarChart3D("各个项目评分统计", // 图表标题
//                "项目名", // x轴的显示标签
//                "项目评分", // y轴的显示标签
//                dataset, // 数据
//                PlotOrientation.VERTICAL, // 图表方向：水平、垂直
//                true, // 显示图例
//                true, // 生成工具
//                true // URL链接
//        );
//        // 对整个图形设置整个柱状图的颜色和文字针
//        chart.setBackgroundPaint(ChartColor.WHITE); // 设置总的背景颜色
//        // 获得图形对象，并通过此对象对图形的颜色文字进行设置
//        CategoryPlot polt = chart.getCategoryPlot();// 获得图表对象
//        polt.setBackgroundPaint(ChartColor.lightGray);// 图形背景颜色
//        polt.setRangeGridlinePaint(ChartColor.WHITE);// 图形表格颜色
//        // 设置柱宽度
//        BarRenderer renderer = (BarRenderer) polt.getRenderer();
//        renderer.setMaximumBarWidth(0.06);
//        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
//        renderer.setBaseItemLabelsVisible(true);
//        renderer.setBaseItemLabelFont(new Font("宋体", Font.BOLD, 15));
//        // 设置文字
//        getChartByFont(chart);
//
//        return chart;
//
//    }
//
//
////柱状图设置文字样式
////
//// @param chart
//
//    private static void getChartByFont(JFreeChart chart) {
//        // 图形设置标题文字
//        TextTitle textTitle = chart.getTitle();
//        textTitle.setFont(new Font("宋体", Font.BOLD, 20));
//
//        // 设置图形X轴坐标文字
//        CategoryPlot plot = (CategoryPlot) chart.getPlot();
//        CategoryAxis axis = plot.getDomainAxis();
//        axis.setLabelFont(new Font("宋体", Font.BOLD, 22)); // 设置X轴坐标上标题的文字
//        axis.setTickLabelFont(new Font("宋体", Font.BOLD, 15)); // 设置X轴坐标上的文字
//
//        // 设置图形Y轴坐标文字
//        ValueAxis valueAxis = plot.getRangeAxis();
//        valueAxis.setLabelFont(new Font("宋体", Font.BOLD, 12)); // 设置Y轴坐标上标题的文字
//        valueAxis.setTickLabelFont(new Font("sans-serif", Font.BOLD, 12));// 设置Y轴坐标上的文字
//        // 设置提示内容的文字
//        chart.getLegend().setItemFont(new Font("宋体", Font.BOLD, 15));
//    }
//}