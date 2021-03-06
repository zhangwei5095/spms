<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="zhangfn" uri="http://localhost/huihuan/jerrys/tags/jerrys-functions" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/css.css">
</head>
<body>

    <form:form method="post" commandName="authorization">
        <form:hidden path="id"/>

        <div class="form-group">
            <form:label path="appId">应用：</form:label>
            <form:select path="appId" items="${appList}" itemLabel="name" itemValue="id"/>
        </div>

        <div class="form-group">
            <form:label path="userId">用户：</form:label>
            <form:select path="userId" items="${userList}" itemLabel="username" itemValue="id"/>
        </div>

        <div class="form-group">
            <form:label path="roleId">角色列表：</form:label>
            <form:select path="roleId" items="${roleList}" itemLabel="description" itemValue="id"/>
            (目前实现的是一个用户只能对应一个角色)
        </div>

        <form:button>${op}</form:button>

    </form:form>

</body>
</html>