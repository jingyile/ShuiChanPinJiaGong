<%--
  Created by IntelliJ IDEA.
  User: yhs
  Date: 2019/9/23
  Time: 上午9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
    <meta content="default" name="decorator">
    <title>去头工站绩效</title></head>
    <script type="text/javascript">
        function page(n,s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
        }
</script>
<body>
<!--1.tab头部-->
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/kpi/decaptitating">去头工站绩效</a></li>
</ul>
<!--2.查询部分-->
<form:form id="searchForm" method="post" action="${ctx}/kpi/decaptitating" modelAttribute="decaptitating" class="breadcrumb fcrm-search">
    <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
    <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
    <div class="controls">
        <label>开始时间</label>
        <form:input path="startTime" maxlength="50" class="input-medium wdate" htmlEscape="false" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
        &nbsp;&nbsp;
        <label>结束时间</label>
        <form:input path="endTime" maxlength="50" class="input-medium wdate" htmlEscape="false" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
        &nbsp;&nbsp;
        <label>人员名称</label>
        <form:input path="employeeName" maxlength="50" class="input-medium" htmlEscape="false"/>
        <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
    </div>
</form:form>
<!--3.列表-->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <th>日期</th>
    <th>人员</th>
    <th>总重</th>
    <th>薪资(元)</th>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="decaptitating">
        <tr>
            <td>${decaptitating.time}</td>
            <td>${decaptitating.employeeName}</td>
            <td>${decaptitating.weight}</td>
            <td>${decaptitating.money}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!--4.分页-->
<div class="pagination">${page}</div>
</body>
</html>
