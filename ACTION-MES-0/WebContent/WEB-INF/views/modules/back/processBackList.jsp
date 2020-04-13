<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-9-24
  Time: 上午9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>生产流程追溯管理</title>
    <script type="text/javascript">
        //拿到当前页码n和当前数量条数s，将这两个值存入隐藏的input标签当中，然后提交给数据库，更新当前的页码以及数量条数
        function  page(n,s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
        }
    </script>
</head>
<body>
<%--1.tab头部--%>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/back/processback/">生产流程追溯信息查询</a></li>
</ul>
<%--2.查询--%>
<form:form id="searchForm" method="post" action="${ctx}/back/processback/list/" modelAttribute="processBack" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}">
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}">
    <label>产品批次</label>
    <%--将该输入框中的内容传给enterName，然后enterName的值又会传给enterprise对象，这样就打包好了enterprise对象，将该对象传给Controller处理即可--%>
    <form:input path="lotNumber" maxlength="50" class="input-medium" htmlEscape="false"/>
    <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
</form:form>

<%--3.列表--%>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>产品批次</th>
        <th>生产流程</th>
        <th>工序</th>
        <th>工站</th>
        <th>工位</th>
        <th>工号</th>
        <th>员工姓名</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="processBack">
        <tr>
            <td>${processBack.lotNumber}</td>
            <td>${processBack.flowName}</td>
            <td>${processBack.proName}</td>
            <td>${processBack.stationName}</td>
            <td>${processBack.cellName}</td>
            <td>${processBack.employeeNo}</td>
            <td>${processBack.employeeName}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--4.分页--%>
<div class="pagination">${page}</div>
</body>
</html>
