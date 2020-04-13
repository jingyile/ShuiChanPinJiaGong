<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-10
  Time: 上午8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>Bom详情管理</title>
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
    <li class="active"><a href="${ctx}/bas/bomDetail/">Bom详情列表</a></li>
    <li><a href="${ctx}/bas/bomDetail/form">Bom详情添加</a></li>
</ul>
<!-- 查询-->
<form:form id="searchForm" method="post" action="${ctx}/bas/bomDetail" modelAttribute="bomDetail" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
    <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
    <div class="controls">
        <label>Bom名称：</label>
    </div>
</form:form>
<sys:message content="${message}"/>
<!-- 列表-->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <th>Bom类型</th>
    <th>材料类型</th>
    <th>材料数量</th>
    <th>单位</th>
    <th>操作</th>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="detail">
        <tr>
            <td>${detail.bom.bomName}</td>
            <td>${fns:getDictLabel(detail.mType,'material_type','')}</td>
            <td>${detail.mNum}</td>
            <td>${fns:getDictLabel(detail.unit,'unit','')}</td>
            <td>
                <a href="${ctx}/bas/bomDetail/form?id=${detail.id}">修改</a>
                <a href="${ctx}/bas/bomDetail/delete?id=${detail.id}" onclick="return confirmx('确认要删除该Bom详情信息吗？', this.href)">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- 分页-->
<div class="pagination">${page}</div>
</body>
</html>
