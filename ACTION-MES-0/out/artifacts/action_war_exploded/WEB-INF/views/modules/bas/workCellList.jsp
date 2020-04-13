<%--
  Created by IntelliJ IDEA.
  User: jingyile
  Date: 19-8-29
  Time: 上午9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>工位管理</title>
    <%--    装饰器--%>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        function page(n,s){
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>
<%--tab头部--%>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/bas/workCell/">工位列表</a></li>
    <li><a href="${ctx}/bas/workCell/form">工位添加</a></li>
</ul>
<%--查询--%>

<form:form id="searchForm" modelAttribute="workCell" action="${ctx}/bas/workCell/" method="post" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>

    <label>工位名称 ：</label><form:input path="cellName" htmlEscape="false" maxlength="50" class="input-medium"/>
    &nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
</form:form>
<sys:message content="${message}"/>
<%--列表--%>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>工位名称</th>
        <th>所属工站</th>
        <th>工位编码</th>
        <th>工位负责人</th>
        <th>工位描述</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="workCell">
        <tr>
            <td>${workCell.cellName}</td>
            <td>${workCell.workStationInfos.stationName}</td>
            <td>${workCell.cellNumber}</td>
            <td>${workCell.cellMaster}</td>
            <td>${workCell.cellDescription}</td>
            <td>
                <a href="${ctx}/bas/workCell/form?id=${workCell.id}">修改</a>
                <a href="${ctx}/bas/workCell/delete?id=${workCell.id}" onclick="return confirmx('确认要删除该工位吗？', this.href)">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--分页--%>
<div class="pagination">${page}</div>
</body>
</html>