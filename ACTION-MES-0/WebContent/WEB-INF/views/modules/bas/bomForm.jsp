<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-9
  Time: 下午3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>Bom管理</title>
    <meta name="decorator" content="default">
    <script type="text/javascript">
        $(document).ready(function() {
            $("#name").focus();
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
<!-- tab-->
<ul class="nav nav-tabs">
    <li><a href="${ctx}/bas/bom/">Bom列表</a></li>
    <li class="active"><a href="${ctx}/bas/bom/form?id=${bom.id}">Bom${not empty bom.id?'修改':'添加'}</a></li>
</ul>
<br/>
<!-- 表单-->
<form:form id="inputForm" method="post" action="${ctx}/bas/bom/save" modelAttribute="bom" class="breadcrumb form-search">
    <form:hidden path="id"/>
        <div class="control-group">
            <label class="control-label">Bom简称</label>
            <div calss="controls">
                <form:input path="bomName" htmlEscape="false" maxlength="50" class="required"/>
                <span class="help-inline"><font color="red">*</font> </span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">Bom版本</label>
            <div calss="controls">
                <form:input path="bomVersion" htmlEscape="false" maxlength="50" class="required"/>
                <span class="help-inline"><font color="red">*</font> </span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">Bom状态</label>
            <div calss="controls">
                <form:input path="status" htmlEscape="false" maxlength="50" class="required"/>
                <span class="help-inline"><font color="red">*</font> </span>
            </div>
        </div>

    <div class="control-group">
        <label class="control-label">所属产品:</label>
        <div class="controls">
            <form:select path="product.id" id="Pid" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${productList}" itemLabel="productName"  itemValue="id" htmlEscape="false" />
            </form:select>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="form-actions">
        <input id="btnSumit" class="btn btn-primary" type="submit" value="保存"/>&nbsp
        <input id="btnCancel" class="btn" type="button" value="返回" onclick="history.go(-1)">
    </div>
</form:form>
</body>
</html>
