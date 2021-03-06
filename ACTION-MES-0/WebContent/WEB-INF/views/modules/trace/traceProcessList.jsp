<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>工序管理</title>
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
	<form:form id="searchForm" modelAttribute="traceProcess" action="${ctx}/trace/traceProcess/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		
		<label>产品批次：</label><form:input path="lotNumber" htmlEscape="false" maxlength="50" class="input-medium"/>
		&nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>产品批次</th><th>工序编码</th><th>工序名称</th><th>工序描述</th></tr></thead>
		<tbody>
		<c:forEach items="${page.list}" var="traceProcess">
			<tr>
				<td>${traceProcess.lotNumber}</td>
				<td>${traceProcess.proCode}</td>
				<td>${traceProcess.proName}</td>
				<td>${traceProcess.proDesc}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>