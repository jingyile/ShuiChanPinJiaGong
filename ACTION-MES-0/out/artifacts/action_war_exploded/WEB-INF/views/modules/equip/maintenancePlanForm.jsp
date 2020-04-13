<%--
  Created by IntelliJ IDEA.
  User: lzl
  Date: 19-9-11
  Time: 上午10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
        <title>设备保养计划管理</title>
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
<!--1.tab -->

<ul class="nav nav-tabs">
    <li><a href="${ctx}/equip/maintenance/">设备保养计划列表</a></li>
    <li class="active"><a href="">设备保养计划${not empty maintenancePlan.id?'修改':'添加'}</a></li>
</ul>
<br/>
<!--2.表单 -->
<form:form id="inputForm" method="post" action="${ctx}/equip/maintenance/save" modelAttribute="maintenancePlan" class="breadcrumb form-search">
    <form:hidden path="id"/>
    <div class="control-group">
        <label class="control-label">设备类型:</label>
        <div class="controls">
            <form:select path="equipType" id="equipType" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${fns:getDictList('equip_type')}" itemLabel="label"  itemValue="value" htmlEscape="false" />
            </form:select>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
        <div class="control-group">
        <label class="control-label">保养周期:</label>
        <div class="controls">
            <form:select path="cycle" id="cycle" class="input-medium required" >
                <form:option value="" label=""/>
                <form:options items="${fns:getDictList('equip_cycle')}" itemLabel="label"  itemValue="value" htmlEscape="false" />
            </form:select>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">预警时间：</label>
        <div calss="controls">
            <form:input path="warnTime" htmlEscape="false" maxlength="50" class="number"/>天
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">保养人：</label>
        <div calss="controls">

            <sys:treeselect id="user" name="user.id" value="${maintenancePlan.user.id}" labelName="user.name" labelValue="${maintenancePlan.user.name}"
                            title="用户" url="/sys/office/treeData?type=3" allowClear="true" notAllowSelectParent="true" cssClass="input-larg"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">保养内容：</label>
        <div calss="controls">
            <form:textarea path="maintenance" htmlEscape="false" maxlength="200" rows="5" class="input-xlarge"/>
        </div>
    </div>
    <div class="form-actions">
        <input id="btnSumit" class="btn btn-primary" type="submit" value="保存"/>&nbsp
        <input id="btnCancel" class="btn" type="button" value="返回" onclick="history.go(-1)">
    </div>
</form:form>
</body>
</html>
