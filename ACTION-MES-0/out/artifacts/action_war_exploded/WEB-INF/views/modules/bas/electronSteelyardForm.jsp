<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>组织管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#value").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li ><a href="${ctx}/bas/electronSteelyard/">电子秤列表</a></li>
		<li class="active"><a href="">电子称${not empty electronSteelyard.id?'修改':'添加'}</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="electronSteelyard" action="${ctx}/bas/electronSteelyard/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		<div class="control-group">
			<label class="control-label">设备编码:</label>
			<div class="controls">
				<form:input path="qrCode" htmlEscape="false" maxlength="50" class="required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">设备类型:</label>
			<div class="controls">
				<form:select path="type" class="input-medium required">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('equip_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">设备规格:</label>
			<div class="controls">
				<form:select path="spec" class="input-medium required">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('equip_spec')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
	<div class="control-group">
			<label class="control-label">所属工站:</label>
			<div class="controls">
				<form:select path="workStationInfos.id" id="sId" class="input-medium required">
					<form:option value="" label=""/>
					<form:options items="${workStationInfosList}" itemLabel="stationName" itemValue="id" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
			
		</div>
		<div class="control-group">
			<label class="control-label">所属工位:</label>
			<div class="controls">
				<form:select path="workCell.id" id="cId" class="input-medium required">
					<form:option value="" label=""/>
					<form:options items="${workCellList}" itemLabel="cellName" itemValue="id" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
			
		</div>		
		<div class="control-group">
			<label class="control-label">名称:</label>
			<div class="controls">
				<form:input path="eSName" htmlEscape="false" maxlength="50" class="required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">称量范围:</label>
			<div class="controls">
				<form:input path="eSRange" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">重量:</label>
			<div class="controls">
				<form:input path="eSWeight" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">供应商:</label>
			<div class="controls">
				<form:input path="supplier" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生产商:</label>
			<div class="controls">
				<form:input path="manufacturer" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">出厂编号:</label>
			<div class="controls">
				<form:input path="factoryNumber" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">用途:</label>
			<div class="controls">
				<form:input path="purpose" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">采购日期:</label>
			<div class="controls">
					<form:input path="buyDate" name="buyDate" type="text"  maxlength="20" class="input-larg Wdate required"
				onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">资产负责人:</label>
			<div class="controls">
				<form:input path="person" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">所有权部门:</label>
			<div class="controls">
				<sys:treeselect id="organization" name="organization.id" value="${electronSteelyard.organization.id}" labelName="organization.name" labelValue="${electronSteelyard.organization.name}" 
				title="机构" url="/sys/office/treeData" cssClass="input-larg" allowClear="true"/>
			</div>
		</div>
		<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>