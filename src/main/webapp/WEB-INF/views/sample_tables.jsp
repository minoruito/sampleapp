<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html>
<head>
<title>Sample(Tables)</title>

<spring:url value="/resources/js/jquery-3.3.1.js" var="jqueryJs" />
<script src="${jqueryJs}"></script>
<spring:url value="/resources/js/jquery-ui.js" var="jqueryUIJs" />
<script src="${jqueryUIJs}"></script>
<spring:url value="/resources/js/jquery.validate.js"
    var="jqueryValidationJs" />
<script src="${jqueryValidationJs}"></script>

<spring:url value="/resources/css/jquery-ui.css" var="jqueryUICss" />
<link href="${jqueryUICss}" rel="stylesheet" />
<spring:url value="/resources/css/jquery-ui.theme.css"
    var="jqueryUIThemeCss" />
<link href="${jqueryUIThemeCss}" rel="stylesheet" />

<spring:url value="/resources/js/sample_common.js" var="sampleCommonJs" />
<script src="${sampleCommonJs}"></script>
<spring:url value="/resources/js/sample_tables.js" var="sampleTablesJs" />
<script src="${sampleTablesJs}"></script>

<spring:url value="/resources/css/sampleapp.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />

</head>
<body>
    <h1>Sample(Tables)</h1>
    <f:form modelAttribute="sampleTablesForm" action="#" method="post">
        <div>
            <table id="table">
                <tr>
                    <th style="width:240px;">コード</th>
                    <th style="width:240px;">値</th>
                    <th></th>
                </tr>
                <c:forEach var="row" items="${sampleTablesForm.rows}" varStatus="status">
                <tr>
                    <td><f:input path="rows[${status.index}].code" cssClass="required"/></td>
                    <td><f:input path="rows[${status.index}].value" cssClass="required"/></td>
                    <td><a href="#" class="table_del_button">削除</a></td>
                </tr>
                
                </c:forEach>
            </table>
            <input id="table_add_button" type="button" value="追加" />
        </div>
        <hr />
        <input type="submit" value="送信" />
    </f:form>
    <hr />
    <a href="/sampleapp">戻る</a>
</body>
</html>
