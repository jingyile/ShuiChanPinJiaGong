<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-9-23
  Time: 下午10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>原料追溯管理</title>
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
    <li class="active"><a href="${ctx}/back/materialback/">产品原料查询</a></li>
</ul>
<%--2.查询--%>
<form:form id="searchForm" method="post" action="${ctx}/back/materialback/list/" modelAttribute="materialBack" class="breadcrumb form-search">
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
        <th>产品名称</th>
        <th>材料类型</th>
        <th>材料数量</th>
        <th>单位</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="materialBack">
        <tr>
            <td>${materialBack.lotNumber}</td>
            <td>${materialBack.productName}</td>
            <td>${fns:getDictLabel(materialBack.mType,'material_type','')}</td>
            <td>${materialBack.mNum}</td>
            <td>${materialBack.unit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--4.分页--%>
<div class="pagination">${page}</div>
</body>
</html>
