<%--
  Created by IntelliJ IDEA.
  User: yhs
  Date: 2019/9/11
  Time: 下午5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="default" name="decorator">
    <title>绩效参数配置管理</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#value").focus();
            $("#inputForm").validate({
                submitHandler:function (form) {
                    loading('正在提交，请稍等...');
                    form.submit();
                },
                errorContainer:"#messageBox",
                errorPlacement: function (error,element) {
                    $("#messageBox").text("输入有误，请先更正.");
                    if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
                        error.appendTo(element.parent().parent());
                    }else {
                        error.insertAfter(element);
                    }
                }
            });
        });
    </script>
</head>
<body>
    <!--1.tab头部-->
    <ul class="nav nav-tabs">
        <li><a href="${ctx}/kpi/performType/">绩效参数列表</a></li>
        <li class="active"><a href="">绩效参数${not empty performType.id?'修改':'添加'}</a></li>
    </ul>
    <br/>
    <!--表单-->
    <sys:message content="${message}"/>

<form:form id="inputForm" method="post" action="${ctx}/kpi/performType/save" modelAttribute="performType" class="form-horizontal">
    <form:hidden path="id"/>
    <div class="control-group">
        <label class="control-label">绩效参数名称:</label>
        <div class="controls">
            <form:input path="performTypeName" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">单价:</label>
        <div class="controls">
            <form:input path="performTypeNum" htmlEscape="false" maxlength="50" class="required number"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">单位:</label>
        <div class="controls">
            <form:input path="performTypeUnit" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="form-actions">
        <input id="btnSubmit" class="btn btn-primary" type="submit" value="保存"/>&nbsp;
        <input id="btnCancel" class="btn" type="button" value="返回" onclick="history.go(-1)">
    </div>
</form:form>
</body>
</html>
