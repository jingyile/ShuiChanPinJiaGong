<%--
  Created by IntelliJ IDEA.
  User: yhs
  Date: 2019/9/4
  Time: 上午11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="default" name="decorator">
    <title>产线管理</title>
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
        <li><a href="${ctx}/bas/line/">产线列表</a></li>
        <li class="active"><a href="">产线${not empty line.id?'修改':'添加'}</a></li>
    </ul>
    <br/>
    <!--2.表单-->
    <form:form id="inputForm" method="post" action="${ctx}/bas/line/save" modelAttribute="line" class="form-horizontal">
        <form:hidden path="id"/>
        <div class="control-group">
            <label class="control-label">所属车间:</label>
                <div class="controls">
                    <form:select path="workShop.id" id="shopId" class="input-medium required">
                        <form:option value="" label=""/>
                        <form:options items="${shopList}" itemLabel="shopName" itemValue="id" htmlEscape="false"/>
                    </form:select>
                    <span class="help-inline"><font color="red">*</font></span>
                </div>
        </div>
        <div class="control-group">
            <label class="control-label">产线名称:</label>
            <div class="controls">
                <form:input path="lineName" htmlEscape="false" maxlength="50" class="required"/>
                <span class="help-inline"><font color="red">*</font></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">产线编码:</label>
            <div class="controls">
                <form:input path="lineNumber" htmlEscape="false" maxlength="50" class="required"/>
                <span class="help-inline"><font color="red">*</font></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">产线负责人:</label>
            <div class="controls">
                <form:input path="lineMaster" htmlEscape="false" maxlength="50" class="required"/>
                <span class="help-inline"><font color="red">*</font></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">产线描述:</label>
            <div class="controls">
                <form:textarea path="lineDescription" htmlEscape="false" maxlength="50"/>
            </div>
        </div>
        <div class="form-actions">
            <input id="btnSubmit" class="btn btn-primary" type="submit" value="保存"/>&nbsp;
            <input id="btnCancel" class="btn" type="button" value="返回" onclick="history.go(-1)">
        </div>
    </form:form>
</body>
</html>
