<%--
  Created by IntelliJ IDEA.
  User: jingyile
  Date: 2019/9/12
  Time: 下午3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>工单管理</title>
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
<ul class="nav nav-tabs">
    <li><a href="${ctx}/bas/workOrder/">工单列表</a></li>
    <li class="active"><a href="#">工艺流程</a></li>
</ul>
<form:form id="searchForm" modelAttribute="workOrder" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <label>工单号 ：</label>
    <form:input path="orderCode" htmlEscape="false" maxlength="50" class="input-medium" readonly="true"/>
    <label>产品 ：</label>
    <form:input path="product.productName" htmlEscape="false" maxlength="50" class="input-medium" readonly="true"/>
    <label>工艺流程名称 ：</label>
    <form:input value="${product.flow.flowName}" htmlEscape="false" maxlength="50" class="input-medium" readonly="true" path=""/>
</form:form>
<sys:message content="${message}"/>
<label style="padding-left:10px;padding-bottom:5px;">工艺流程详情</label>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead><tr>
        <th>工序编码</th>
        <th>工序名称</th>
        <th>工序描述</th>
    </tr></thead>
    <tbody>
    <c:forEach items="${page.list}" var="flowProcess">
        <tr>
            <td>${flowProcess.process.proCode}</td>
            <td>${flowProcess.process.proName}</td>
            <td>${flowProcess.process.proDesc}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>

