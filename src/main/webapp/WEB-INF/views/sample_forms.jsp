<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix = "mytags" uri = "/WEB-INF/tlds/mytaglib.tld" %>

<%@ page session="false"%>

<html>
<head>
<title>Sample(Forms)</title>

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
<spring:url value="/resources/js/sample_forms.js" var="sampleFormsJs" />
<script src="${sampleFormsJs}"></script>

<spring:url value="/resources/css/sampleapp.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />

</head>
<body>
    <h1>Sample(Forms)</h1>
   <f:form modelAttribute="sampleFormsForm" action="#" method="post">
        <ul>
            <li>バリデーション</li>
            <li><input name="valid_text" type="text" placeholder="必須"></li>
        </ul>
        <ul>
            <li>カレンダー
            <li>
            <li><input name="cal" type="text" id="datepicker">
            <li>
        </ul>
        <ul>
            <li>オートコンプリート</li>
            <li><input name="tags1" id="tags1"></li>
            <li><span class="guide">プログラム言語を選択(部分一致)</span></li>
        </ul>
        <ul>
            <li>オートコンプリート</li>
            <li><input id="tags2"></li>
            <li><span class="guide">プログラム言語を選択(前方一致)</span></li>
        </ul>

        <ul>
            <li>オートコンプリート(AJAX)</li>
            <li><input id="tags-ajax"></li>
            <li><span class="guide">プログラム言語を選択</span></li>
        </ul>

        <ul>
            <li>入力可能プルダウン</li>
            <li><input type="text" autocomplete="on" list="test"> <datalist
                    id="test">
                    <option value="ActionScript">
                    <option value="BASIC">
                    <option value="C">
                    <option value="C++">
                    <option value="COBOL">
                    <option value="Erlang">
                    <option value="Fortran">
                    <option value="Groovy">
                    <option value="Haskell">
                    <option value="Java">
                    <option value="JavaScript">
                    <option value="Lisp">
                    <option value="Perl">
                    <option value="PHP">
                    <option value="Python">
                    <option value="Ruby">
                    <option value="Scala">
                    <option value="Scheme">
                </datalist></li>
            <li><span class="guide">プログラム言語を選択(部分一致)HTML5のdatalistを使用</span></li>
        </ul>
        <ul>
            <li>マスター取得(AJAX)</li>
            <li><mytags:inputAjax path="masterAjaxText" size="2"/></li>
            <li><span class="guide">プログラム言語を選択
                    (01-18までを入力して検索ボタンをクリックしてください。)</span></li>
        </ul>
        <input type="submit" value="送信" />
    </f:form>
    <hr />
    <a href="/sampleapp">戻る</a>
</body>
</html>
