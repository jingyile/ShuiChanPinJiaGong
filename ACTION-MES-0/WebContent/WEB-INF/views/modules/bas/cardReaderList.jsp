<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>读卡器</title>
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
		<li class="active"><a href="${ctx}/bas/cardReader/">读卡器列表</a></li>
		<li><a href="${ctx}/bas/cardReader/form?sort=10">读卡器添加</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="cardReader" action="${ctx}/bas/cardReader/" method="post" class="breadcrumb form-search">
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
		<thead><tr><th>编码</th><th>设备类型</th><th>设备规格</th><th>所属工站</th>
		<th>所属工位</th><th>读卡速度</th><th>读卡间隔</th><th>感应距离</th><th>读卡类型</th><th>读卡频率</th><th>供应商</th><th>生产商</th>
		<th>出厂编号</th><th>用途</th><th>采购日期</th><th>资产负责人</th><th>所有权部门</th>
		<!--  
		<th>ip</th>
		<th>波特率</th><th>数据位</th><th>起始位</th><th>终止位</th><th>校验方式</th><th>系统简单属性</th>
		-->
		<th>操作</th></tr></thead>
		<tbody>
		<c:forEach items="${page.list}" var="cardReader">
			<tr>
				<td>${cardReader.qrCode}</td>
				<td>${fns:getDictLabel(cardReader.type, 'equip_type', '')}</td>
				<td>${fns:getDictLabel(cardReader.spec, 'equip_spec', '')}</td>
				<td>${iPhoto.workStationInfos.stationName}</td>
				<td>${iPhoto.workCell.cellName}</td>
				<td>${cardReader.readerSpeed}</td>
				<td>${cardReader.timeInterval}</td>
				<td>${cardReader.distance}</td>
				<td>${cardReader.readerType}</td>
				<td>${cardReader.frequency}</td>
				<td>${cardReader.supplier}</td>
				<td>${cardReader.manufacturer}</td>
				<td>${cardReader.factoryNumber}</td>
				<td>${cardReader.purpose}</td>
				<td>${cardReader.buyDate}</td>
				<td>${cardReader.person}</td>
				<td>${cardReader.organization.name}</td>
				<!-- 
				<td>${cardReader.ip}</td>
				<td>${cardReader.comBaudrate}</td>
				<td>${cardReader.comDataseat}</td>
				<td>${cardReader.comBegin}</td>
				<td>${cardReader.comEnd}</td>
				<td>${cardReader.checkMode}</td>
				<td>${cardReader.sysParam}</td>
				 -->
				<td>
    				<a href="${ctx}/bas/cardReader/form?id=${cardReader.id}">修改</a>
					<a href="${ctx}/bas/cardReader/delete?id=${cardReader.id}" onclick="return confirmx('确认要删除该组织吗？', this.href)">删除</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>