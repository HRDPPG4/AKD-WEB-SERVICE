
 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="modal fade" id="upload" role="dialog" ng-controller="UserCtrl">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal" >&times;</button>
      <!--   <h4><span class="glyphicon glyphicon-lock"></span>បញ្ជូលឯកសារនៅទីនេះ</h4> -->                  
      </div>
      <div class="modal-body" style="padding:40px 50px;">
   		 <form method="post" enctype="multipart/form-data">     			
	 		<input type="file" name="file" id="filer_input" multiple="multiple" data-bind-file="" data-ng-model="theFile">		  		  
			 		  					
		</form>  	
			<div ng-show="theFile"> 
			<form role="form">
			    <div class="form-group">
			      <label>Title:</label><!-- {{theFile.name}}FileName{{finalName}} -->
			      <input type="text" class="form-control" placeholder="Title" ng-model="theFile.name" id="title" ng-readonly="false">		<!-- ng-model="fileTitle" id="title" -->
			     <!-- <p>Title: {{theFile.name}}</p> -->
			  <!--    <p>Type: {{theFile.type}}</p> -->
			    </div>
				
			    <div class="form-group">
			      <label>Category:</label>		      
			        <select class="form-control" ng-model="catID">			       
                        <option ng-repeat="x in category" value="{{x.CAT_ID}}">{{x.CAT_NAME}}</option>
                   	</select>
			    </div>
			    
			    <div class="form-group">
			      <label>Description:</label>
			      <input type="text" class="form-control" placeholder="Description" ng-model="des" >
			    </div>
		  	</form>       					       
			</div> 
	      </div>
      <div class="modal-footer">
        <button class="btn-upload"​ alignt="center"​​ id="btnSave" ng-click="uploadFile($event)">រក្សាទុក</button>   
      </div>
    </div>
    
  </div>
</div>
<!-- <script>
 
	 $('#upload').on('hidden.bs.modal', function () {
		  // do something…
		 /*  alert("close")
		  angular.element(document).find('#upload').scope().myfun();
		  angular.element(document).find('#upload').scope().$apply()  */
		
		}) 
 
</script> -->
