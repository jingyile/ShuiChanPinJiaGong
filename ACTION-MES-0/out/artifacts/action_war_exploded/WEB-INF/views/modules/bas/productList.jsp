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
    <title>产品管理</title>
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
<!--1.tab头部 -->
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/bas/product/">产品列表</a></li>
    <li><a href="${ctx}/bas/product/form">产品添加</a></li>
</ul>
<!--2.查询部分 -->
<form:form id="searchForm" method="post" action="${ctx}/bas/product" modelAttribute="product" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
    <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
    <div class="controls">
         <label>产品名称：</label>
         <form:input path="ProductName" maxlength="50" class="input-medium" htmlEscape="false"/>
         <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary">
    </div>
</form:form>
<sys:message content="${message}"/>
<!--3.列表 -->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
        <th>产品名称</th>
        <th>产品简称</th>
        <th>产品简述</th>
        <th>是否需要首件检测</th>
        <th>条码</th>
        <th>管理方式</th>
        <th>批次</th>
        <th>状态</th>
        <th>产品计量单位</th>
        <th>属性</th>
        <th>生产流程</th>
        <th>操作</th>
    </thead>
    <tbody>
        <c:forEach items="${page.list}" var="p">
            <tr>
                <td>${p.productName}</td>
                <td>${p.productAbbr}</td>
                <td>${p.productDesc}</td>
                <td>$${fns:getDictLabel(p.firstCheck, 'yes_no', '')}</td>
                <td>${p.qrCode}</td>
                <td>${p.manageWay}</td>
                <td>${p.lotNumber}</td>
                <td>${p.state}</td>
                <td>${p.productUnit}</td>
                <td>${p.productProp}</td>
                <td>${p.flow.flowName}</td>
                <td>
                    <a href="${ctx}/bas/product/form?id=${p.id}">修改</a>
                    <a href="${ctx}/bas/product/delete?id=${p.id}" onclick="return confirmx('确认要删除该产品吗？', this.href)">删除</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<!--4.分页 -->
<div class="pagination">${page}</div>
</body>
</html>
