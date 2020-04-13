<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-10
  Time: 上午10:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>设备台账</title>
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
<!-- tab-->
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/equip/equip/">设备台账列表列表</a></li>
</ul>
<!-- 查询-->
<form:form id="searchForm" method="post" action="${ctx}/equip/equip" modelAttribute="equipment" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
    <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
    <div class="controls">
        <label class="control-label">设备类型:</label>
        <form:select path="type" id="type" class="input-medium required" >
            <form:option value="" label=""/>
            <form:options items="${fns:getDictList('equip_type')}" itemLabel="label"  itemValue="value" htmlEscape="false" />
        </form:select>
        <label class="control-label">设备规格:</label>
        <form:select path="spec" id="spec" class="input-medium required" >
            <form:option value="" label=""/>
            <form:options items="${fns:getDictList('equip_spec')}" itemLabel="label"  itemValue="value" htmlEscape="false" />
        </form:select>
        <label class="control-label">编码:</label>
        <form:input path="qrCode" maxlength="50" class="input-medium" htmlEscape="false"/>
        <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary">

    </div>
</form:form>
<sys:message content="${message}"/>
<!-- 列表-->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <th>编码</th>
    <th>设备类型</th>
    <th>设备规格</th>
    <th>供应商</th>
    <th>生厂商</th>
    <th>出厂编号</th>
    <th>用途</th>
    <th>采购日期</th>
    <th>资产负责人</th>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="equipment">
        <tr>
            <td>${equipment.qrCode}</td>
            <td>${fns:getDictLabel(equipment.type,'equip_type' ,'' )}</td>
            <td>${fns:getDictLabel(equipment.spec,'equip_spec' ,'' )}</td>
            <td>${equipment.supplier}</td>
            <td>${equipment.manufacturer}</td>
            <td>${equipment.factoryNumber}</td>
            <td>${equipment.purpose}</td>
            <td>${equipment.buyDate}</td>
            <td>${equipment.person}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- 分页-->
<div class="pagination">${page}</div>
</body>
</html>
