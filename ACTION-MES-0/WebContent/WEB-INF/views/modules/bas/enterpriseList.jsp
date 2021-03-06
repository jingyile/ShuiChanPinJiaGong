<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-8-29
  Time: 上午9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="decorator" content="default">
    <title>企业管理</title>
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
        <li class="active"><a href="${ctx}/bas/enterprise/">企业列表</a></li>
        <li><a href="${ctx}/bas/enterprise/form">企业添加</a></li>
    </ul>
    <%--2.查询--%>
    <form:form id="searchForm" method="post" action="${ctx}/bas/enterprise/" modelAttribute="enterprise" class="breadcrumb form-search">
        <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}">
        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}">
        <label>企业名称</label>
        <%--将该输入框中的内容传给enterName，然后enterName的值又会传给enterprise对象，这样就打包好了enterprise对象，将该对象传给Controller处理即可--%>
        <form:input path="enterName" maxlength="50" class="input-medium" htmlEscape="false"/>
        <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
    </form:form>
    <%--将删除成功的信息显示在页面上--%>
    <sys:message content="${message}"/>
    <%--3.列表--%>
    <table id="contentTable" class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>
            <th>企业名称</th>
            <th>组织机构代码</th>
            <th>企业层次</th>
            <th>企业性质</th>
            <th>企业注册资本</th>
            <th>法人</th>
            <th>法人身份证</th>
            <th>地址</th>
            <th>邮政编码</th>
            <th>备注</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.list}" var="enterprise">
            <tr>
                <td>${enterprise.enterName}</td>
                <td>${enterprise.enterCode}</td>
                <td>${enterprise.enterLevel}</td>
                <td>${enterprise.enterNature}</td>
                <td>${enterprise.enterCapital}</td>
                <td>${enterprise.enterLperson}</td>
                <td>${enterprise.enterLpCard}</td>
                <td>${enterprise.enterAddress}</td>
                <td>${enterprise.emailCode}</td>
                <td>${enterprise.enterRemarks}</td>
                <td>
                    <a href="${ctx}/bas/enterprise/form?id=${enterprise.id}">修改</a>
                    <a href="${ctx}/bas/enterprise/delete?id=${enterprise.id}" onclick="return confirmx('确认要删除该企业吗？',this.href)">删除</a>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
     <%--4.分页--%>
    <div class="pagination">${page}</div>
</body>
</html>
