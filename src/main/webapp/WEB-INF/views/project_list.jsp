<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<link href="/resources/css/set2.css" rel="stylesheet" />
	
  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
			
		
<div class="contatiner">
    <div class="row">
<jsp:include page="project/project_list.jsp" />
	<div class="space50"></div>
        </div>
      
        </div>

<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
<script>


$('.readmore_btn').hide();
$('#addproject').show();

var pageno = 2;

$('#allproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/addProject.do",
			data : "pageNo=1",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	   pageno = 2;
	        	   $('.readmore_btn').hide();
	        	   $('#addproject').show();
	        	   $('#pageresult').html("");
	           }
			});
 });

$('#cproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=C",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	   pageno = 2;
	        	   $('.readmore_btn').hide();
	        	   $('#addcproject').show();
	        	   $('#pageresult').html("");
	           }
			});
 });
$('#cppproject').click(function(){
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=CPP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addcppproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#csharpproject').click(function(){
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "programName=CSharp&pageNo=1",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addcsharpproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#javaproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=JAVA",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addjavaproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#swiftproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=Swift",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addswiftproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#javascriptproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=Javascript",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addjavascriptproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#pythonproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=Phython",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addpythonproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#phpproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=PHP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addphpproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#rubyproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=RUBY",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addrubyproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
 
function projectClick(){
	$('.readmore_btn').hide();
	   $('#pageresult').html("");
}

$('#addproject').click(function(){
		autoResizing();
	  $.ajax({
			type : "get",
			url : "/addProject.do",
			data : "pageNo="+pageno,
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
 });

$('#addcproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=C",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addcppproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=CPP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addcsharpproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=CSharp",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addjavaproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=JAVA",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addswiftproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=Swift",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addjavascriptproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=Javascript",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addpythonproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=Phython",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addphpproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=PHP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addrubyproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=RUBY",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});

</script>
</body>
</html>