<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>


<html>
<head>



	<jsp:include page="menu/module/head.jsp" />
	
  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
<div class="contatiner" style="margin-top:100px;">
    <div class="row" style="margin-left:80px;margin-right:80px;margin-bottom:50px;">
<jsp:include page="board/boarddetail.jsp" />
<div class="space50"></div>
	
        </div>
      
        </div>


<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
 <script type="text/javascript" src="/resources/js/ajax.js"></script>
 
   <script type="text/javascript">

	
   
	   $("#like").click(function(){
		  
		   $.ajax({
	            type : "get",
	            url : "/board/like",
	            data : "article_no="+  "${article.article_no}",
	            dataType : "html",//text,xml, json
	            success : function(result) {
	               $("#message").html(result);
	            }
			});
		   
	   });
  
  </script>
</body>
</html>