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
    <li class="active"><a href="#">BOM信息</a></li>
</ul>
<form:form id="searchForm" modelAttribute="workOrder" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <label>工单号 ：</label>
    <form:input path="orderCode" htmlEscape="false" maxlength="50" class="input-medium" readonly="true"/>
    <label>产品 ：</label>
    <form:input path="product.productName" htmlEscape="false" maxlength="50" class="input-medium" readonly="true"/>
    <label>BOM名称 ：</label>
    <input value="${bom.bomName}" htmlEscape="false" maxlength="50" class="input-medium" readonly="true"/>
</form:form>
<sys:message content="${message}"/>
<label style="padding-left:10px;padding-bottom:5px;">BOM详情</label>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead><tr>
        <th>材料类型</th>
        <th>材料数量</th>
        <th>单位</th>
    </tr></thead>
    <tbody>
    <c:forEach items="${page.list}" var="bomDetail">
        <tr>
            <td>${fns:getDictLabel(bomDetail.mType,'material_type','')}</td>
            <td>${bomDetail.mNum}</td>
            <td>${fns:getDictLabel(bomDetail.unit,'unit','')}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>
