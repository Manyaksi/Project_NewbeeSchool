<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-md-10 col-md-offset-2 content">

<div class="tutorial-content-direction-btn-group">
             <div style="float:left">
           <a href="#" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-arrow-left"></span> 이전 강의</a>
           </div>
            <div style="float:right">
           <a href="#" class="btn btn-sm btn-default">다음 강의 <span class="glyphicon glyphicon-arrow-right"></span></a>
           </div>
           </div>
           
           
            <div class="panel panel-default">
                <div class="panel-heading">
                    ${devprogram.program_name}
                </div>
                <div class="panel-body">
                    ${devprogram.install_content}
                </div>
                
            </div>
            <div class="tutorial-content-direction-btn-group">
             <div style="float:left">
           <a href="#" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-arrow-left"></span> 이전 강의</a>
           </div>
            <div style="float:right">
           <a href="#" class="btn btn-sm btn-default">다음 강의 <span class="glyphicon glyphicon-arrow-right"></span></a>
           </div>
           </div>
		</div>
		
		