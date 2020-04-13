<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-9-3
  Time: 上午8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>工厂管理</title>
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
            <li class="active"><a href="${ctx}/bas/factory/">工厂列表</a></li>
            <li><a href="${ctx}/bas/factory/form">工厂添加</a></li>
        </ul>

        <%--2.查询--%>
        <form:form id="searchForm" method="post" action="${ctx}/bas/factory/" modelAttribute="factory" class="breadcrumb form-search">
            <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}">
            <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}">
            <label>工厂名称</label>
            <%--将该输入框中的内容传给enterName，然后enterName的值又会传给enterprise对象，这样就打包好了enterprise对象，将该对象传给Controller处理即可--%>
            <form:input path="factoryName" maxlength="50" class="input-medium" htmlEscape="false"/>
            <input id="btnSubmit" type="submit" value="查询" class="btn btn-primary"/>
        </form:form>

        <%--将删除成功的信息显示在页面上--%>
        <sys:message content="${message}"/>

        <%--3.列表--%>
        <table id="contentTable" class="table table-striped table-bordered table-condensed">
            <thead>
            <tr>
                <th>工厂名称</th>
                <th>所属企业</th>
                <th>建筑日期</th>
                <th>地址</th>
                <th>电话</th>
                <th>邮政编码</th>
                <th>建筑面积</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${page.list}" var="factory">
                <tr>
                    <td>${factory.factoryName}</td>
                    <td>${factory.enterprise.enterName}</td>注意外键
                    <td>${factory.factoryBuildDate}</td>
                    <td>${factory.factoryAddress}</td>
                    <td>${factory.factoryPhone}</td>
                    <td>${factory.factoryECode}</td>
                    <td>${factory.factoryBuildM}</td>
                    <td>
                        <a href="${ctx}/bas/factory/form?id=${factory.id}">修改</a>
                        <a href="${ctx}/bas/factory/delete?id=${factory.id}" onclick="return confirmx('确认要删除该工厂吗？',this.href)">删除</a>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>

        <%--4.分页--%>
        <div class="pagination">${page}</div>
</body>
</html>
