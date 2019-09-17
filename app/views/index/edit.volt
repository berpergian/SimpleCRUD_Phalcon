<div class="page-header">
    <h3>Edit Student Data</h3>
</div>

<form action="../update" class="form-horizontal" method="POST">
 <div class="form-group">
   <label class="control-label col-sm-2" for="id">ID:</label>
   <div class="col-sm-8">
     <input type="text" class="form-control" name="id" value="{{id}}" readonly>
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-sm-2" for="name">Name:</label>
   <div class="col-sm-8">
     <input type="text" class="form-control" name="name" placeholder="Insert name" value="{{name}}" required>
   </div>
 </div>
 <div class="form-group">
   <label class="control-label col-sm-2" for="address">Address:</label>
   <div class="col-sm-8">
     <input type="text" class="form-control" name="address" placeholder="Insert address" value="{{address}}" required>
   </div>
 </div>
 <div class="form-group">
   <div class="col-sm-offset-2 col-sm-10">
     <button type="submit" class="btn btn-default">Save</button>
     <a href="{{url("")}}" class="btn btn-danger" role="button">Cancel</a></td>
   </div>
 </div>
</form>
