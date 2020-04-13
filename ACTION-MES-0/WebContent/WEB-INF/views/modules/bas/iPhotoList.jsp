<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>红外对射枪</title>
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
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/bas/iPhoto/">红外对射枪列表</a></li>
		<li><a href="${ctx}/bas/iPhoto/form">红外对射枪添加</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="iPhoto" action="${ctx}/bas/iPhoto/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		
		<div class="controls">
			<label class="control-label">设备类型:</label>
			<form:select path="type" id="type" class="input-medium" >
				<form:option value="" label=""/>
				<form:options items="${fns:getDictList('equip_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</form:select>
			<label class="control-label">设备规格:</label>
			<form:select path="spec" id="spec" class="input-medium">
				<form:option value="" label=""/>
				<form:options items="${fns:getDictList('equip_spec')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</form:select>
		
		<label>编码 ：</label><form:input path="qrCode" htmlEscape="false" maxlength="50" class="input-medium"/>
		&nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
		</div>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
		<th>编码</th>
		<th>设备类型</th>
		<th>设备规格</th>
		
		<th>所属工站</th>
		<th>所属工位</th>
		<th>感应距离</th>
		<th>感应方式</th>
		<th>工作环境</th>
		<th>供应商</th>
		<th>生产商</th>
		<th>出厂编号</th
		><th>用途</th>
		<th>采购日期</th>
		<th>资产负责人</th>
		<th>所有权部门</th>
		<!--  
		<th>ip</th>
		<th>波特率</th><th>数据位</th><th>起始位</th><th>终止位</th><th>校验方式</th><th>系统简单属性</th>
		-->
		<th>操作</th></tr></thead>
		<tbody>
		<c:forEach items="${page.list}" var="iPhoto">
			<tr>
				<td>${iPhoto.qrCode}</td>
				<td>${fns:getDictLabel(iPhoto.type, 'equip_type', '')}</td>
				<td>${fns:getDictLabel(iPhoto.spec, 'equip_spec', '')}</td>
				
				<td>${iPhoto.workStationInfos.stationName}</td>
				<td>${iPhoto.workCell.cellName}</td>
				
				<td>${iPhoto.iphotoDistance}</td>
				<td>${iPhoto.iphotoWay}</td>
				<td>${iPhoto.workEnvironment}</td>
				<td>${iPhoto.supplier}</td>
				<td>${iPhoto.manufacturer}</td>
				<td>${iPhoto.factoryNumber}</td>
				<td>${iPhoto.purpose}</td>
				<td>${iPhoto.buyDate}</td>
				<td>${iPhoto.person}</td>
				<td>${iPhoto.organization.name}</td>
				<!--  
				<td>${iPhoto.ip}</td>
				<td>${iPhoto.comBaudrate}</td>
				<td>${iPhoto.comDataseat}</td>
				<td>${iPhoto.comBegin}</td>
				<td>${iPhoto.comEnd}</td>
				<td>${iPhoto.checkMode}</td>
				<td>${iPhoto.sysParam}</td>
				-->
				<td>
    				<a href="${ctx}/bas/iPhoto/form?id=${iPhoto.id}">修改</a>
					<a href="${ctx}/bas/iPhoto/delete?id=${iPhoto.id}" onclick="return confirmx('确认要删除该组织吗？', this.href)">删除</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>