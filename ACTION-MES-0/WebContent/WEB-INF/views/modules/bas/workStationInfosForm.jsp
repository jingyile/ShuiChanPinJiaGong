<%--
  Created by IntelliJ IDEA.
  User: yhs
  Date: 2019/9/10
  Time: 下午5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="default" name="decorator">
    <title>工站管理</title>
</head>
<body>
<!--1.tab头部-->
    <ul class="nav nav-tabs">
        <li><a href="${ctx}/bas/workStationInfos/">工站信息列表</a></li>
        <li class="active"><a href="">工站信息${not empty workStationInfos.id?'修改':'添加'}</a></li>
    </ul>
    <br/>
<form:form id="inputForm" method="post" action="${ctx}/bas/workStationInfos/save" modelAttribute="workStationInfos" class="form-horizontal">
    <form:hidden path="id"/>
    <div class="control-group">
        <label class="control-label">所属产线:</label>
        <div class="controls">
            <form:select path="line.id" id="lId" class="input-medium required">
                <form:option value="" label=""/>
                <form:options items="${lineList}" itemLabel="lineName" itemValue="id" htmlEscape="false"/>
            </form:select>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">工站名称:</label>
        <div class="controls">
            <form:input path="stationName" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">工站编码:</label>
        <div class="controls">
            <form:input path="stationNo" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">工站负责人:</label>
        <div class="controls">
            <form:input path="stationMaster" htmlEscape="false" maxlength="50" class="required"/>
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
