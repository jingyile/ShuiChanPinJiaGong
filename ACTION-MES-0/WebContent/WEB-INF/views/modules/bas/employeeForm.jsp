<%--
  Created by IntelliJ IDEA.
  User: jingyile
  Date: 19-8-31
  Time: 上午9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>员工管理</title>
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
<%--tab头部--%>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/bas/employee/">员工信息列表</a></li>
    <li class="active"><a href="${ctx}/bas/employee/form?id=${employee.employeeNo}">员工${not empty employee.employeeNo?'修改':'添加'}</a></li>
</ul><br/>
<%--表单--%>
<form:form id="inputForm" modelAttribute="employee" action="${ctx}/bas/employee/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">员工号:</label>
        <div class="controls">
            <form:input path="employeeNo" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">员工姓名:</label>
        <div class="controls">
            <form:input path="employeeName" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">入职日期:</label>
        <div class="controls">
            <form:input path="workDate" htmlEscape="false" maxlength="250" class="input-large required　Wdate"
                        onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true});"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">身份证:</label>
        <div class="controls">
            <form:input path="idCard" htmlEscape="false" maxlength="50" class="required number"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">所属部门:</label>
        <div class="controls">
          <sys:treeselect id="office" name="office.id" value="${employee.office.id}" labelName="office.name" labelValue="${employee.office.name}" title="机构" url="/sys/office/treeData" cssClass="input-large" allowClear="true"> </sys:treeselect>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">性别:</label>
        <div class="controls">
            <form:radiobutton path="sex" value="男" checked="true" name="gen"/>男&nbsp;&nbsp;
            <form:radiobutton path="sex" value="女" name="gen"/>女
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">年龄:</label>
        <div class="controls">
            <form:input path="age" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">电话:</label>
        <div class="controls">
            <form:input path="telNum" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">地址:</label>
        <div class="controls">
            <form:input path="address" htmlEscape="false" maxlength="50"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">邮箱:</label>
        <div class="controls">
            <form:input path="email" htmlEscape="false" maxlength="50" class="email"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">备注:</label>
        <div class="controls">
            <form:input path="remarks" htmlEscape="false" maxlength="200"/>
        </div>
    </div>
    <div class="form-actions">
        <input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
</body>
</html>