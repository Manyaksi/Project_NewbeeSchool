<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div class="tutorial-sidebar col-md-2">
		<h4>${devprogram.program_name} 다운로드</h4>
			<ul class="nav nav-pills nav-stacked">
				<li><a id="nopadding" href="/tutorial/tutorial?program_name=${devprogram.program_name}&program_os=linux">Linux에서 ${devprogram.program_name} 다운로드하기</a></li>
				<li><a id="nopadding" href="/tutorial/tutorial?program_name=${devprogram.program_name}&program_os=window">Windows에서 ${devprogram.program_name} 다운로드하기</a></li>
				<!-- <li><a id="nopadding" href="/tutorial/tutorial?program_name=java&program_os=osx">OSX 에서 JAVA 다운로드하기</a></li>-->
			</ul>
			<c:if test="${devprogram.program_name == 'java' or 'eclipsedown' }">
			<div class="space50"></div>
			<h4>JAVA IDE 다운로드</h4>
			<ul class="nav nav-pills nav-stacked">
				<li><a id="nopadding" href="/tutorial/tutorial?program_name=eclipsedown&program_os=linux">리눅스에서 Eclipse 다운로드하기</a></li>
				<li><a id="nopadding" href="/tutorial/tutorial?program_name=eclipsedev&program_os=linux">리눅스에서 Eclipse 설치하기</a></li>
				<li><a id="nopadding" href="/tutorial/tutorial?program_name=eclipsedown&program_os=window">Windows에서 Eclipse 다운로드하기</a></li>
				<li><a id="nopadding" href="/tutorial/tutorial?program_name=eclipsedev&program_os=window">Windows에서 Eclipse 설치하기</a></li>
				<!-- <li><a id="nopadding" href="#">OSX 에서 Eclipse 다운로드하기</a></li> -->
				<!-- <li><a id="nopadding" href="#">OSX 에서 Eclipse 설치하기</a></li> -->
			</ul>
			</c:if>
	</div>
		
		

		
		