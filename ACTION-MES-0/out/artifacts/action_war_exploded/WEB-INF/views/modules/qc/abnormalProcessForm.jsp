<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="decorator" content="default"/>
    <title>异常工序检测管理</title>
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
<!-- 1.tab头部 -->
<ul class="nav nav-tabs">
    <li><a href="${ctx}/qc/abnormalProcess/">异常工序列表</a></li>
    <li class="active"><a href="#">异常工序${not empty abnormalProcess.id?'修改':'添加'}</a></li>
</ul>
<br/>
<!-- 2.表单 -->
<form:form id="inputForm" method="post" action="${ctx}/qc/abnormalProcess/save" modelAttribute="abnormalProcess" class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">工序名称：</label>
        <div class="controls">
            <form:select path="process.id" id="pId" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${processList}" itemLabel="proName" itemValue="id" htmlEscape="false"/>
            </form:select>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">上报问题：</label>
        <div class="controls">
            <form:textarea path="problem" htmlEscape="false" rows="3" maxlength="200" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">上报人：</label>
        <div class="controls">
            <form:select path="reportUser.id" id="rId" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${userList}" itemLabel="name" itemValue="id" htmlEscape="false"/>
            </form:select>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">上报时间：</label>
        <div class="controls">
            <form:input path="reportTime" htmlEscape="false" maxlength="50" class="required wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm})"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">检查结果：</label>
        <div class="controls">
            <form:textarea path="test" htmlEscape="false" rows="3" maxlength="200" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">检查人：</label>
        <div class="controls">
            <form:select path="testUser.id" id="tId" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${userList}" itemLabel="name" itemValue="id" htmlEscape="false"/>
            </form:select>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">检查时间：</label>
        <div class="controls">
            <form:input path="testTime" htmlEscape="false" maxlength="50" class="required wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm})"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">问题状态：</label>
        <div class="controls">
            <form:input path="state" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="form-actions">
        <input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
</body>
</html>