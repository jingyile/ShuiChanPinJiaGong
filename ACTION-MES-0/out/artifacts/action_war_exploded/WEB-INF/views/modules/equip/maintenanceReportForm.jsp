<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-23
  Time: 上午8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>维修报告</title>
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
    <li class="active"><a href="${ctx}/equip/repair/">${not empty equipRepair.id?'查看':'添加'}维修报告</a></li>
</ul>

<form:form id="searchForm" method="post" action="${ctx}/equip/repair/save" modelAttribute="equipRepair" class="breadcrumb form-search" enctype="multipart/form-data" >
    <form:hidden path="id"/>
    <form:hidden path="mid"/>
    <div class="control-group">
        <label class="control-label">故障类型：</label>
        <div calss="controls">
            <form:input path="faultType" htmlEscape="false" maxlength="50" class="required" readonly="${not empty equipRepair.id? true:false}"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">故障原因：</label>
        <div calss="controls">
            <form:input path="faultReason" htmlEscape="false" maxlength="50" class="required" readonly="${not empty equipRepair.id? true:false}"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">故障描述：</label>
        <div calss="controls">
            <form:textarea path="faultDesc" htmlEscape="false" rows="5" maxlength="200" class="required" readonly="${not empty equipRepair.id? true:false}"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">维修图片:</label>
        <div class="controls">
            <div id="preview">
                <img  id="imgHidden" style="display:none;width:200px; height: 300px;" />
                <img id="ViewImage" src="${ctx}/../upload/${equipRepair.faultImgs}" />
            </div>
            <input id="fileupload" type="file" name="file" value="上传图片" onchange="preview(this)"  />
        </div>
    </div>

    <div class="form-actions">
        <input id="btnSumit" class="btn btn-primary" type=${not empty equipRepair.id? 'hidden':'submit'} value="保存"/>&nbsp
        <input id="btnCancel" class="btn" type="button" value="返回" onclick="history.go(-1)">
    </div>

</form:form>
</body>
</html>
