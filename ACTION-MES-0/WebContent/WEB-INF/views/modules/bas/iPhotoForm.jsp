<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>红外对射枪管理</title>
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
		<li><a href="${ctx}/bas/iPhoto/">红外对射枪列表</a></li>
		<li class="active"><a href="${ctx}/bas/iPhoto/form?id=${iPhoto.id}">红外对射枪${not empty iPhoto.id?'修改':'添加'}</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="iPhoto" action="${ctx}/bas/iPhoto/save" method="post" class="form-horizontal">
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
				<form:select path="spec"  class="input-medium required" >
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
				<form:select path="workCell.id" id="cId"  class="input-medium required" >
					<form:option value="" label=""/>
					<form:options items="${workCellList}" itemLabel="cellName" itemValue="id" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
	
		<div class="control-group">
			<label class="control-label">感应距离:</label>
			<div class="controls">
				<form:input path="iphotoDistance" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">感应方式:</label>
			<div class="controls">
				<form:input path="iphotoWay" htmlEscape="false" maxlength="50" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">工作环境:</label>
			<div class="controls">
				<form:input path="workEnvironment" htmlEscape="false" maxlength="50" />
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
				<sys:treeselect id="organization" name="organization.id" value="${iPhoto.organization.id}" labelName="organization.name" labelValue="${iPhoto.organization.name}" 
				title="机构" url="/sys/office/treeData" cssClass="input-larg" allowClear="true"/>
				
			</div>
		</div>
		<!-- 
		<div class="control-group">
			<label class="control-label">ip:</label>
			<div class="controls">
				<form:input path="ip" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">波特率:</label>
			<div class="controls">
				<form:input path="comBaudrate" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">数据位:</label>
			<div class="controls">
				<form:input path="comDataseat" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">起始位:</label>
			<div class="controls">
				<form:input path="comBegin" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">终止位:</label>
			<div class="controls">
				<form:input path="comEnd" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">校验方式:</label>
			<div class="controls">
				<form:input path="checkMode" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">系统简单属性:</label>
			<div class="controls">
				<form:input path="sysParam" htmlEscape="false" maxlength="50" class="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注:</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xlarge"/>
			</div>
		</div>
		 -->
		<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>