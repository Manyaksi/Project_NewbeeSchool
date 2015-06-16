<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<link href="/resources/css/set2.css" rel="stylesheet" />
	
  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
			
		
<div class="contatiner" style="margin-top:0px; background-color: lightgray">
    <div class="row" style="margin-left:80px;margin-right:80px;margin-bottom:50px;">
<jsp:include page="project/project_list.jsp" />
	<div class="space50"></div>
        </div>
      
        </div>

<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />

</body>
</html>