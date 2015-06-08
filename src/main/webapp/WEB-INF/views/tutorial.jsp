<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	  <jsp:include page="menu/module/head.jsp" />

  </head>



<body>
    <jsp:include page="menu/nav.jsp" />
    <jsp:include page="tutorials/module/tutorials_nav.jsp" />
    

    <div class="container-fluid">
      <div class="row">
        
     <jsp:include page="tutorials/module/tutorials_sidebar.jsp" />   
        
 	  <jsp:include page="tutorials/module/tutorials_contents.jsp" />   
 	  
 	  <jsp:include page="tutorials/module/tutorials_comments.jsp" />  
        </div>
      </div>
  
<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
<script src="resources/js/tutorialnav.js"></script>


</body>
</html>