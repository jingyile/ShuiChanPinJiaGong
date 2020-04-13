<%--
  Created by IntelliJ IDEA.
  User: yhs
  Date: 2019/9/4
  Time: 上午11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="default" name="decorator">
    <title>产线管理</title>
    <script type="text/javascript">
        function page(n,s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
        }
    </script>
</head>
<body>
    <!--1.tab头部-->
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctx}/bas/line/">产线列表</a></li>
        <li><a href="${ctx}/bas/line/form">产线添加</a></li>
    </ul>
    <!--2.查询-->
    <form:form id="searchForm" method="post" action="${ctx}/bas/line" modelAttribute="line" class="breadcrumb fcrm-search">
        <input id="pageNo" name="pageNo" type="hidden" value=${page.pageNo}/>
        <input id="pageSize" name="pageSize" type="hidden" value=${page.pageSize}/>
        <label>产线名称</label>
        <form:input path="lineName" maxlength="50" class="input-medium" htmlEscape="false"/>
        <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
    </form:form>
    <sys:message content="${message}"/>
    <!--3.列表-->
    <table id="contentTable" class="table table-striped table-bordered table-condensed">
        <thead>
        <th>产线名称</th>
        <th>所有车间</th>
        <th>产线编码</th>
        <th>产线负责人</th>
        <th>产线描述</th>
        <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${page.list}" var="line">
            <tr>
                <td>${line.lineName}</td>
                <td>${line.workShop.shopName}</td>
                <td>${line.lineNumber}</td>
                <td>${line.lineMaster}</td>
                <td>${line.lineDescription}</td>
                <td>
                    <a href="${ctx}/bas/line/form?id=${line.id}">修改</a>
                    <a href="${ctx}/bas/line/delete?id=${line.id}" onclick="return confirmx('确认要删除该产线吗?',this.href)">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!--4.分页-->
    <div class="pagination">${page}</div>
</body>
</html>
