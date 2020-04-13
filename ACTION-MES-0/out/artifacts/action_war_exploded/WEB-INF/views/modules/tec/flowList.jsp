<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-9-7
  Time: 下午4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>工艺流程管理</title>
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
            <li class="active"><a href="${ctx}/tec/flow/">流程列表</a></li>
            <li><a href="${ctx}/tec/flow/form">流程添加</a></li>
        </ul>
        <%--2.查询--%>
        <form:form id="searchForm" method="post" action="${ctx}/tec/flow/" modelAttribute="flow" class="breadcrumb form-search">
            <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}">
            <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}">
            <label>流程编码</label>
            <%--将该输入框中的内容传给enterName，然后enterName的值又会传给enterprise对象，这样就打包好了enterprise对象，将该对象传给Controller处理即可--%>
            <form:input path="flowCode" maxlength="50" class="input-medium" htmlEscape="false"/>
            <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
        </form:form>

        <%--将删除成功的信息显示在页面上--%>
        <sys:message content="${message}"/>

        <%--3.列表--%>
        <table id="contentTable" class="table table-striped table-bordered table-condensed">
            <thead>
            <tr>
                <th>流程编码</th>
                <th>流程版本</th>
                <th>流程名称</th>
                <th>流程描述</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${page.list}" var="flow">
                <tr>
                    <td>${flow.flowCode}</td>
                    <td>${flow.version}</td>
                    <td>${flow.flowName}</td>
                    <td>${flow.flowDesc}</td>
                    <td>
                        <a href="${ctx}/tec/flow/form?id=${flow.id}">修改</a>
                        <a href="${ctx}/tec/flow/delete?id=${flow.id}" onclick="return confirmx('确认要删除该流程的信息吗？',this.href)">删除</a>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>
        <%--4.分页--%>
        <div class="pagination">${page}</div>
</body>
</html>
