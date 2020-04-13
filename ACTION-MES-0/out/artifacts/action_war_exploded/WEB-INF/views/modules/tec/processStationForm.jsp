<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-9-9
  Time: 下午4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>工序与工站关系管理</title>
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
        <%--1.tab头部--%>
        <ul class="nav nav-tabs">
            <li><a href="${ctx}/tec/processStation/">工序与工站关系</a></li>
            <li class="active"><a href="">工序与工站关系${not empty processStation.id?'修改':'添加'}</a></li>
        </ul>
        <br/>

        <%--2.表单部分--%>
        <form:form id="inputForm" method="post" action="${ctx}/tec/processStation/save" modelAttribute="processStation" class="form-horizontal">
            <form:hidden path="id"/>
            <div class="control-group">
                <label class="control-label">工序名称：</label>
                <div class="controls">
                        <%--path的值将会绑定给表单中的factory对象，该对象中有一个属性值和path的值对应，名称都一样，factory对象会作为数据传递给Controller--%>
                    <form:select path="process.id" id="pId" class="input-medium required">
                        <form:option value=""  label=""/>
                        <%--itemLabel的值是items所得集合中对象的属性值，itemValue代表该项的值，
                        用集合中对象的id作为该值，当选中某一项时，
                        该id就是该下拉列表的值，也就是要传递给factory中的enterprise.id的值--%>
                        <form:options items="${processList}" itemLabel="proName" itemValue="id" htmlEscape="false"/>
                    </form:select>
                    <span class="help-inline"><font color="red">*</font></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">工站名称：</label>
                <div class="controls">
                        <%--path的值将会绑定给表单中的factory对象，该对象中有一个属性值和path的值对应，名称都一样，factory对象会作为数据传递给Controller--%>
                    <form:select path="workStationInfos.id" id="stationId" class="input-medium required">
                        <form:option value=""  label=""/>
                        <%--itemLabel的值是items所得集合中对象的属性值，itemValue代表该项的值，
                        用集合中对象的id作为该值，当选中某一项时，
                        该id就是该下拉列表的值，也就是要传递给factory中的enterprise.id的值--%>
                        <form:options items="${workStationInfosList}" itemLabel="stationName" itemValue="id" htmlEscape="false"/>
                    </form:select>
                    <span class="help-inline"><font color="red">*</font></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">产线名称：</label>
                <div class="controls">
                        <%--path的值将会绑定给表单中的factory对象，该对象中有一个属性值和path的值对应，名称都一样，factory对象会作为数据传递给Controller--%>
                    <form:select path="line.id" id="lineId" class="input-medium required">
                        <form:option value=""  label=""/>
                        <%--itemLabel的值是items所得集合中对象的属性值，itemValue代表该项的值，
                        用集合中对象的id作为该值，当选中某一项时，
                        该id就是该下拉列表的值，也就是要传递给factory中的enterprise.id的值--%>
                        <form:options items="${lineList}" itemLabel="lineName" itemValue="id" htmlEscape="false"/>
                    </form:select>
                    <span class="help-inline"><font color="red">*</font></span>
                </div>
            </div>
            <%--history.go(-1)表示返回上一个历史路径--%>
            <div class="form-actions">
                <input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
                <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
            </div>
        </form:form>
</body>
</html>
