<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-4
  Time: 上午9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>产品管理</title>
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
<!--1.tab -->

<ul class="nav nav-tabs">
    <li><a href="${ctx}/bas/product/">产品列表</a></li>
    <li class="active"><a href="${ctx}/bas/product/form?id=${product.id}">产品${not empty product.id?'修改':'添加'}</a></li>
</ul>
<br/>
<!--2.表单 -->
<form:form id="inputForm" method="post" action="${ctx}/bas/product/save" modelAttribute="product" class="breadcrumb form-search">
    <form:hidden path="id"/>
    <div class="control-group">
        <label class="control-label">产品名称</label>
        <div calss="controls">
            <form:input path="productName" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">产品简称</label>
        <div calss="controls">
            <form:input path="productAbbr" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">产品计量单位</label>
        <div calss="controls">
            <form:input path="productUnit" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">是否需要首件检测</label>
        <div calss="controls">
            <from:select path="firstCheck" id="firstCheck" class="input-medium required">
                <form:options items="${fns:getDictList('yes_no')}" itemLabel="label" itemvalue="value" htmlEscape="false"/>
            </from:select>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">条码</label>
        <div calss="controls">
            <form:input path="qrCode" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">管理方式</label>
        <div calss="controls">
            <form:input path="manageWay" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">批次</label>
        <div calss="controls">
            <form:input path="lotNumber" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">状态</label>
        <div calss="controls">
            <form:input path="state" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">产品描述</label>
        <div calss="controls">
            <from:textarea path="productDesc" htmlEscape="false" maxlength="300" />
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">属性</label>
        <div calss="controls">
            <from:textarea path="productProp" htmlEscape="false" maxlength="300" />
        </div>
    </div>


    <div class="control-group">
        <label class="control-label">生产流程:</label>
        <div class="controls">
            <form:select path="flow.id" id="flow.id" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${flowList}" itemLabel="flowName"  itemValue="id" htmlEscape="false" />
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
