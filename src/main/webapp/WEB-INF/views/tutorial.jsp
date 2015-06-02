<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	  <link href="resources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
 <link href="resources/css/dashboard.css" rel="stylesheet">
	
  </head>



<body>
    <jsp:include page="menu/nav.jsp" />
    
    <jsp:include page="tutorials/module/tutorials_top.jsp"/>

    <div class="container-fluid">
      <div class="row">
        
     <jsp:include page="tutorials/module/tutorials_sidebar.jsp" />   
        
 	  <jsp:include page="tutorials/module/tutorials_contents.jsp" />   
        </div>
      </div>
  
<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />

</body>
</html>