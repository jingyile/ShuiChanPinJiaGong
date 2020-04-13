<%--
  Created by IntelliJ IDEA.
  User: jingyile
  Date: 2019/9/10
  Time: 下午10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        function page(n,s){
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
    <title>订单信息</title>
</head>
<body>
<%--tab头部--%>
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/bas/order/">订单信息列表</a></li>
</ul><br/>
<%--列表--%>
<sys:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>订单号</th>
        <th>订购商</th>
        <th>产品名称</th>
        <th>数量</th>
        <th>单位</th>
        <th>订购日期</th>
        <th>销售人</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="m">
        <tr>
            <td>${m.orderNo}</td>
            <td>${m.indentor}</td>
            <td>${m.product.productName}</td>
            <td>${m.quantity}</td>
            <td>${fns:getDictLabel(m.unit,'unit','')}</td>
            <td>${m.orderDate}</td>
            <td>${m.salesman}</td>
            <td>${fns:getDictLabel(m.status,'order_status' ,'' )}</td>
            <td>
                <a href="${ctx}/bas/order/doWork?id=${m.id}">下工单</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--4.分页--%>
<div class="pagination">${page}</div>
</body>
</html>



