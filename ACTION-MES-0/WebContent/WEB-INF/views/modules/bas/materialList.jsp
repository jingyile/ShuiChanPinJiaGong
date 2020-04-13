<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-8-29
  Time: 上午10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>原料库存列表</title>
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
    <li class="active"><a href="${ctx}/bas/material/">原料库存清单</a></li>
</ul>
<%--3.列表--%>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>批号</th>
        <th>材料类型</th>
        <th>材料名称</th>
        <th>供应商名称</th>
        <th>采购日期</th>
        <th>库存</th>
        <th>单位</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="material">
        <tr>
            <td>${material.batchNum}</td>
            <td>${fns:getDictLabel(material.mType,'material_type','')}</td>
            <td>${material.mName}</td>
            <td>${material.supplierName}</td>
            <td>${material.purchaseDate}</td>
            <td>${material.quantity}</td>
            <td>${fns:getDictLabel(material.unit,'unit','')}</td>

            <%--<td>--%>
                <%--<a href="${ctx}/bas/enterprise/form?id=${enterprise.id}">修改</a>--%>
                <%--<a href="${ctx}/bas/enterprise/delete?id=${enterprise.id}" onclick="return confirm('确认要删除该企业吗？',this.href)">删除</a>--%>
            <%--</td>--%>

        </tr>
    </c:forEach>
    </tbody>
</table>
<%--4.分页--%>
<div class="pagination">${page}</div>
</body>
</html>