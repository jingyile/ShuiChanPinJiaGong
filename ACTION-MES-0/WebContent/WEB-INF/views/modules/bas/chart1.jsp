<%--
  Created by IntelliJ IDEA.
  User: jingyile
  Date: 2019/9/26
  Time: 上午10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="decorator" content="default">
    <title>员工工作时长</title>

</head>
<body>
<!-- 1.tab头部 -->
<ul class="nav nav-tabs">
    <li><a href="${ctx}/bas/mountGuard/">员工工作信息列表</a></li>
    <li><a href="${ctx}/bas/workTime/">员工周工作时长统计</a></li>
    <li class="active"><a href="${ctx}/bas/workTime/chart1">员工月工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart2">员工年工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart0cell">工位周工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart1cell">工位月工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart2cell">工位年工作时长统计</a></li>
</ul><br/>

<!-- 2.查询 -->
<form:form id="searchForm" method="post" action="${ctx}/bas/workTime/chart1" modelAttribute="workTime" class="breadcrumb form-search">
    <div class="controls">
        <label>员工姓名：</label>
        <form:select path="eName" id="eName" class="input-medium required" >
            <form:option value="" label=""/>
            <form:options items="${employeeList}" itemLabel="employeeName"  itemValue="employeeName" htmlEscape="false" />
        </form:select>
            <%--        <form:input path="week" maxlength="50" class="input-medium wdate" htmlEscape="false" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>--%>
            <%--        <div class="controls">--%>
            <%--            <form:select path="week" id="pId" class="input-medium required" >--%>
            <%--                <form:option value="" label=""/>--%>
            <%--                <form:options items="${eWeek}" itemLabel="proName" itemValue="id" htmlEscape="false"/>--%>
            <%--            </form:select>--%>
            <%--            <span class="help-inline"><font color="red">*</font></span>--%>
            <%--        </div>--%>
            <%--        <label>月工作统计：</label>--%>
            <%--        <form:input path="month" maxlength="50" class="input-medium wdate" htmlEscape="false" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>--%>

            <%--        <label>年工作统计：</label>--%>
            <%--        <form:input path="year" maxlength="50" class="input-medium wdate" htmlEscape="false" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>--%>

        <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
    </div>
    <!-- 3.图表 -->
    <div id="chartmin" style="width:100%;height:500px;"></div>
    <script type="text/javascript">
        $(function(){
            var xData=[];
            var yData=[];
            <c:forEach items="${emonthList}" var="workTime">
            xData.push("${workTime.month}${workTime.employeeName}");
            yData.push("${workTime.workTime}");
            </c:forEach>
            //基于准备好的dom  初始化echarts实例
            var myChart =echarts.init(document.getElementById('chartmin'));
            //指定图表的配置项和数据
            var option={
                title:{
                    text:'员工月工作时长统计',
                    top:'bottom',
                    left:'center'
                },
                tooltip:{
                    trigger:'axis'
                },
                legend:{
                },
                xAxis:{
                    name:'周期',
                    type:'category',
                    data:xData
                },
                yAxis:{
                    name:'工作时长'
                },
                series:[{
                    name:'工作时长',
                    type:'bar',
                    data:yData
                }]
            };
            //使用刚指定的配置项和数据显示图表
            myChart.setOption(option);
        })
    </script>
</form:form>
</body>



