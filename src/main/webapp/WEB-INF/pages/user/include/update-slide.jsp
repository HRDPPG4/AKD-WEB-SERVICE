<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<div class="modal fade" id="update-slide" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4><span class="glyphicon glyphicon-lock"></span>បញ្ជូលឯកសារនៅទីនេះ</h4>
        
        
    <div class="imgcontainer">						     
    
    </div>
			          
        
      </div>
      <div class="modal-body" style="padding:40px 50px;">

     		<form action="#" method="post" enctype="multipart/form-data">
     			 <div class="form-group">
      <label for="sel1">ជ្រើសរើសផ្នែក:</label>
      	<select class="form-control" id="sel1">
        <option>បច្ចេកវិទ្យា</option>
        <option>កិសិកម្ម</option>
        <option>ពានិជ្ជកម្ម</option>
        <option>ច្បាប់</option>
      </select>
    
   
    </div>
     			 <input type="file" name="files[]" id="filer_input" multiple="multiple">
     			 <input type="submit" value="Submit">
			</form>
        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
    
  </div>
</div>
