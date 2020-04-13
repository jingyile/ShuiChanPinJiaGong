<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>残次品上报</title>
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
<!--tab头部  -->
<ul class="nav nav-tabs">
    <li><a href="${ctx}/qc/inperfections">残次品列表</a></li>
    <li class="active"><a href="">残次品${not empty violaction.id?'修改':'添加'}</a></li>
</ul><br/>
<!--表单  -->
<form:form id="inputForm" modelAttribute="inperfections" action="${ctx}/qc/inperfections/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <div class="control-group">
        <label class="control-label">工单编号:</label>
        <div class="controls">
            <form:select path="workOrder.id" id="wId" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${workOrderList}" itemLabel="orderCode"  itemValue="id" htmlEscape="false" />
            </form:select>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">残次品详情:</label>
        <div class="controls">
            <form:textarea path="desc" rows="3" htmlEscape="false" maxlength="200" />
            <span class="help-line"><font color="red">*</font></span>
        </div>
    </div>
    <div class="form-actions">
        <input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
</body>
</html>