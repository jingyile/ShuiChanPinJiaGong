<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>物料组件管理</title>
	<meta name="decorator" content="default"/>
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
	<form:form id="searchForm" modelAttribute="traceBomComponent" action="${ctx}/trace/traceBomComponent/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		
		<label>产品批次：.</label><form:input path="lotNumber" htmlEscape="false" maxlength="50" class="input-medium"/>
		&nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
        <tr>
            <th>产品批次</th>
            <th>组件名称</th>
            <th>组件数量</th>
            <th>所属物料</th>
            <th>工序编号</th>
            <th>工序名称</th>
            <th>工时</th>
        </tr>
        </thead>
		<tbody>
		<c:forEach items="${page.list}" var="traceBomComponent">
			<tr>
				<td>${traceBomComponent.lotNumber}</td>
				<td>${traceBomComponent.mname}</td>
				<td>${traceBomComponent.mnum}</td>
				<td>${traceBomComponent.bom.bomName}</td>
				<td>${traceBomComponent.proCode}</td>
				<td>${traceBomComponent.proName}</td>
				<td>${traceBomComponent.whours}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>