<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html>
<head>
<title>Sample(Popups)</title>

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

<spring:url value="/resources/js/sample_popups.js" var="samplePopupsJs" />
<script src="${samplePopupsJs}"></script>

<spring:url value="/resources/css/sampleapp.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />

</head>
<body>
	<h1>Sample(Popups)</h1>

	<form>
        <ul>
            <li>ポップアップ<li>
            <li><input id="popup1_button" type="button" value="表示"></li>
        </ul>

        <ul>
            <li>ポップアップ(テキスト反映)<li>
            <li><input id="popup2_button" type="button" value="表示"></li>
            <li>結果：<input id="popup2_result" type="text" /></li>
        </ul>

        <ul>
            <li>ポップアップ(検索)<li>
            <li><input id="popup3_button" type="button" value="表示"></li>
            <li>結果：<input id="popup3_result" type="text" /></li>
        </ul>

		<input type="submit" value="送信" />
	</form>
	
	<div id="popup1" title="ポップアップ１">
	ポップアップの説明文章
	</div>
    <div id="popup2" title="ポップアップ２">
    テキスト入力:<input id="popup2_input" type="text" />
    </div>	

    <div id="popup3" title="ポップアップ３">
        <form id="popup3_form">
           プログラム言語を選択:<input id="popup3_input" type="text" />
           <p class="guide hint_div">(01-18までを入力して検索ボタンをクリックしてください。<a href="#" title="ActionScript, BASIC, C, C++, COBOL, Erlang, Fortran, Groovy, Haskell, Java, JavaScript, Lisp, Perl, PHP, Python, Ruby, Scala, Schemeから選択">ヒント</a>)</p>
           
            <input type="submit" value="検索" />
            <hr />
              <div id="popup3_search_result"></div>
        </form>
    </div>  
    <hr />
    <a href="/sampleapp">戻る</a>
</body>
</html>
