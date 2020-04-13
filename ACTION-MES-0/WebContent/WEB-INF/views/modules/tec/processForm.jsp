<%--
  Created by IntelliJ IDEA.
  User: hedingqin
  Date: 19-9-6
  Time: 下午4:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="decorator" content="default">
    <title>企业管理</title>
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
            <li><a href="${ctx}/tec/process/">工序列表</a></li>
            <li class="active"><a href="">工序${not empty process.id?'修改':'添加'}</a></li>
        </ul>
        <br/>
        <%--2.表单部分--%>
        <form:form id="inputForm" method="post" action="${ctx}/tec/process/save" modelAttribute="process" class="form-horizontal">
            <form:hidden path="id"/>
            <div class="control-group">
                <label class="control-label">工序编码：</label>
                <div class="controls">
                    <form:input path="proCode" htmlEscape="false" maxlength="50" class="required"/>
                    <span class="help-inline"><font color="red">*</font></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">工序名称：</label>
                <div class="controls">
                    <form:input path="proName" htmlEscape="false" maxlength="50" class="required"/>
                    <span class="help-inline"><font color="red">*</font></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">工序描述：</label>
                <div class="controls">
                    <form:textarea path="proDesc" htmlEscape="false" maxlength="200"/>
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
