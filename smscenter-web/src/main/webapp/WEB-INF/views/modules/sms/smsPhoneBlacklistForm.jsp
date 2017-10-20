<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>系统黑名单管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
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
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/sms/smsPhoneBlacklist/">信息列表</a></li>
		<li class="active"><a href="${ctx}/sms/smsPhoneBlacklist/form?id=${smsPhoneBlacklist.id}">信息<shiro:hasPermission name="sms:smsPhoneBlacklist:edit">${not empty smsPhoneBlacklist.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="sms:smsPhoneBlacklist:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="smsPhoneBlacklist" action="${ctx}/sms/smsPhoneBlacklist/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">手机号码：</label>
			<div class="controls">
				<form:textarea path="phone" htmlEscape="false" class="input-xlarge required" rows="6" maxlength="100" />
				<span class="help-inline"><font color="red">*注：内容为1行1个手机号码</font></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" class="input-xlarge" rows="3" maxlength="100" />
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="sms:smsPhoneBlacklist:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>