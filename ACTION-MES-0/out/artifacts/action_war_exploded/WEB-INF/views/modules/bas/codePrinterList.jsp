<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<title>条码打印机</title>
<meta name="decorator" content="default" />
<script type="text/javascript">
	function page(n, s) {
		$("#pageNo").val(n);
		$("#pageSize").val(s);
		$("#searchForm").submit();
		return false;
	}
</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/bas/codePrinter/">条码打印机列表</a></li>
		<li><a href="${ctx}/bas/codePrinter/form?sort=10">条码打印机添加</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="codePrinter"
		action="${ctx}/bas/codePrinter/" method="post"
		class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}" />
		<input id="pageSize" name="pageSize" type="hidden"
			value="${page.pageSize}" />

		<div class="controls">
			<label class="control-label">设备类型:</label>
			<form:select path="type" id="type" class="input-medium">
				<form:option value="" label="" />
				<form:options items="${fns:getDictList('equip_type')}"
					itemLabel="label" itemValue="value" htmlEscape="false" />
			</form:select>
			<label class="control-label">设备规格:</label>
			<form:select path="spec" id="spec" class="input-medium">
				<form:option value="" label="" />
				<form:options items="${fns:getDictList('equip_spec')}"
					itemLabel="label" itemValue="value" htmlEscape="false" />
			</form:select>

			<label>编码 ：</label>
			<form:input path="qrCode" htmlEscape="false" maxlength="50"
				class="input-medium" />
			&nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit"
				value="查询" />
		</div>
	</form:form>
	<sys:message content="${message}" />
	<table id="contentTable"
		class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>编码</th>
				<th>设备类型</th>
				<th>设备规格</th>
				<th>所属工站</th>
				<th>所属工位</th>	
				<th>编号</th>
				<th>打印模式</th>
				<th>分辨率</th>
				<th>供应商</th>
				<th>生产商</th>
				<th>出厂编号</th>
				<th>用途</th>
				<th>采购日期</th>
				<th>资产负责人</th>
				<th>所有权部门</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${page.list}" var="codePrinter">
				<tr>
					<td>${codePrinter.qrCode}</td>
					<td>${fns:getDictLabel(codePrinter.type, 'equip_type', '')}</td>
					<td>${fns:getDictLabel(codePrinter.spec, 'equip_spec', '')}</td>
					<td>${codePrinter.workCell.cellName}</td>
					<td>${codePrinter.workStationInfos.stationName}</td>
					<td>${codePrinter.cPNumber}</td>
					<td>${codePrinter.mode}</td>
					<td>${codePrinter.resolution}</td>
					<td>${codePrinter.supplier}</td>
					<td>${codePrinter.manufacturer}</td>
					<td>${codePrinter.factoryNumber}</td>
					<td>${codePrinter.purpose}</td>
					<td>${codePrinter.buyDate}</td>
					<td>${codePrinter.person}</td>
					<td>${codePrinter.organization.name}</td>

					<td><a href="${ctx}/bas/codePrinter/form?id=${codePrinter.id}">修改</a>
						<a href="${ctx}/bas/codePrinter/delete?id=${codePrinter.id}"
						onclick="return confirmx('确认要删除该组织吗？', this.href)">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>