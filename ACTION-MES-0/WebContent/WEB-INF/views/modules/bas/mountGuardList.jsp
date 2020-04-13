<%--
  Created by IntelliJ IDEA.
  User: jingyile
  Date: 2019/9/10
  Time: 下午5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
        <meta name="decorator" content="default"/>
        <script type="text/javascript">
            function page(n,s){
                $("#pageNo").val(n);
                $("#pageSize").val(s);
                $("#searchForm").submit();
                return false;
            }
        </script>
        <title>上岗记录管理</title>
    </head>
<body>
<%--1.tab头部--%>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/bas/mountGuard/">员工工作信息列表</a></li>
    <li><a href="${ctx}/bas/workTime/">员工周工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart1">员工月工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart2">员工年工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart0cell">工位周工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart1cell">工位月工作时长统计</a></li>
    <li><a href="${ctx}/bas/workTime/chart2cell">工位年工作时长统计</a></li>
</ul><br/>
<%--2.查询--%>
<form:form id="searchForm" modelAttribute="mountGuard" action="${ctx}/bas/mountGuard" method="post" class="form-horizontal">
    <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
    <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
    <div class="controls">
        <label>员工号:</label>
        <form:input path="employee.employeeNo" maxlength="50" class="input-medium" htmlEscape="false/"/>
        <label>工位:</label>
        <form:select path="workCell.id"  htmlEscape="false" maxlength="50" class="input-medium required" >
            <form:option value="" label=""/>
            <form:options items="${workCellList}" itemLabel="cellName"  itemValue="id" htmlEscape="false" />
        </form:select>
        <label>员工状态:</label>
        <form:select path="workStatus"  htmlEscape="false" maxlength="50" class="input-medium required">
        <form:option value="" label=""/>
        <form:option value="上班" label="上班"/>
        <form:option value="下班" label="下班"/>
        </form:select>
        <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
    </div>
</form:form>
<sys:message content="${message}"/>
<%--3.列表--%>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>员工编号</th>
        <th>员工姓名</th>
        <th>所属部门</th>
        <th>所属产线</th>
        <th>所属部门</th>
        <th>工位</th>
        <th>上班时间</th>
        <th>下班时间</th>
        <th>工作状态</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="m">
        <tr>
            <td>${m.employee.employeeNo}</td>
            <td>${m.employee.employeeName}</td>
            <td>${m.office.name}</td>
            <td>${m.line.lineName}</td>
            <td>${m.workStationInfos.stationName}</td>
            <td>${m.workCell.cellName}</td>
            <td>${m.colockIn}</td>
            <td>${m.colockOff}</td>
            <td>${m.workStatus}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--4.分页--%>
<div class="pagination">${page}</div>
</body>
</html>



