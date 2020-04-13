<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="decorator" content="default"/>
    <title>异常工序检测管理</title>
    <script type="text/javascript">
        function page(n,s){
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>
<!-- 1.tab头部 -->
<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/qc/abnormalProcess/">异常工序列表</a></li>
    <li><a href="${ctx}/qc/abnormalProcess/form">异常工序添加</a></li>
</ul>
<!-- 2.查询 -->
<form:form id="searchForm" modelAttribute="abnormalProcess" action="${ctx}/qc/abnormalProcess/" method="post" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <div class="controls">
        <label>工序名称 ：</label>
        <form:input path="process.proName" htmlEscape="false" maxlength="50" class="input-medium"/>&nbsp;
        <input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
    </div>
</form:form>
<sys:message content="${message}"/>
<!-- 3.列表 -->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>工序名称</th>
        <th>上报问题</th>
        <th>上报人</th>
        <th>上报时间</th>
        <th>检查结果</th>
        <th>检查人</th>
        <th>检查时间</th>
        <th>问题状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="abnormalProcess">
        <tr>
            <td>${abnormalProcess.process.proName}</td>
            <td>${abnormalProcess.problem}</td>
            <td>${abnormalProcess.reportUser.name}</td>
            <td>${abnormalProcess.reportTime}</td>
            <td>${abnormalProcess.test}</td>
            <td>${abnormalProcess.testUser.name}</td>
            <td>${abnormalProcess.testTime}</td>
            <td>${abnormalProcess.state}</td>
            <td>
                <a href="${ctx}/qc/abnormalProcess/form?id=${abnormalProcess.id}">修改</a>
                <a href="${ctx}/qc/abnormalProcess/delete?id=${abnormalProcess.id}" onclick="return confirmx('确认要删除该异常工序信息吗？', this.href)">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- 4.分页 -->
<div class="pagination">${page}</div>
</body>
</html>