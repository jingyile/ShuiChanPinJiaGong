<%--
  Created by IntelliJ IDEA.
  User: fzw
  Date: 2019/9/10
  Time: 2:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default"/>

    <title>残次品上报</title>
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
<%--头部--%>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/qc/inperfections">残次品上报列表</a></li>
    <li><a href="${ctx}/qc/inperfections/form">残次品添加</a></li>
</ul>
<%--查询--%>
<form:form id="searchForm" modelAttribute="inperfections" action="${ctx}/qc/inperfections" method="post" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>

    <label>产品名称 ：</label><form:input path="product.productName" htmlEscape="false" maxlength="50" class="input-medium"/>
    &nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
</form:form>
<sys:message content="${message}"/>

<%--列表--%>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead><tr><th>产品名称</th>
        <th>产品批次</th>
        <th>工单编号</th>
        <th>详情</th>
        <th>操作</th></tr></thead>
    <tbody>
    <c:forEach items="${page.list}" var="inperfections">
        <tr>
            <td>${inperfections.product.productName}</td>
            <td>${inperfections.bn}</td>
            <td>${inperfections.workOrder.orderCode}</td>
            <td>${inperfections.desc}</td>
            <td>
                <a href="${ctx}/qc/inperfections/form?id=${inperfections.id}">修改</a>
                <a href="${ctx}/qc/inperfections/delete?id=${inperfections.id}" onclick="return confirmx('确认要删除残次品上报信息吗？', this.href)">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%--分页--%>
<div class="pagination">${page}</div>

</body>
</html>
