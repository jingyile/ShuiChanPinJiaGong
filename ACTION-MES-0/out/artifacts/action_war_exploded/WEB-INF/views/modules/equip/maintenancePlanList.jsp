<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-11
  Time: 上午10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>设备保养计划管理</title>
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
    <li class="active"><a href="${ctx}/equip/maintenance/">设备保养计划列表</a></li>
    <li><a href="${ctx}/equip/maintenance/form">设备保养计划添加</a></li>
</ul>

<!-- 查询-->
<form:form id="searchForm" method="post" action="${ctx}/equip/maintenance" modelAttribute="maintenancePlan" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
    <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
    <div class="controls">
        <label>设备类型：</label>
        <form:select path="equipType" id="equipType" class="input-medium required" >
            <form:option value="" label=""/>
            <form:options items="${fns:getDictList('equip_type')}" itemLabel="label"  itemValue="value" htmlEscape="false" />
            <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary">
        </form:select>
    </div>
</form:form>
<sys:message content="${message}"/>

<!-- 列表-->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <th>设备类型</th>
    <th>维护周期</th>
    <th>预警时间</th>
    <th>保养内容</th>
    <th>保养人</th>
    <th>操作</th>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="plan">
        <tr>
            <td>${fns:getDictLabel(plan.equipType,'equip_type' ,'' )}</td>
            <td>${fns:getDictLabel(plan.cycle,'equip_cycle' ,'' )}</td>
            <td>${plan.warnTime}</td>
            <td>${plan.maintenance}</td>
            <td>${plan.user.name}</td>
            <td>
                <a href="${ctx}/equip/maintenance/form?id=${plan.id}">修改</a>
                <a href="${ctx}/equip/maintenance/delete?id=${plan.id}" onclick="return confirmx('确认要删除该设备保养计划信息吗？', this.href)">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- 分页-->
<div class="pagination">${page}</div>
</body>
</html>
