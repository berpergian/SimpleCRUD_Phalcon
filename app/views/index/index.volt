<div class="page-header">
    <h1>CRUD Website</h1>
    <p class="lead">A Simple CRUD Phalcon MVC Website, using MySQL as Database</p>
</div>

<div class="page-header">
    <h3>Student List</h3>
</div>

<div class=”flash-message-css”><?php $this->flashSession->output(); ?></div>

<!-- Add Student Data Modal Form -->

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Data Mahasiswa</h4>
      </div>
      <div class="modal-body">
      <form action="{{url("index/add")}}" class="form-horizontal" method="POST">
        <div class="form-group">
          <label class="control-label col-sm-2" for="id" required>ID:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="id" placeholder="Insert ID">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="name" required>Name:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="name" placeholder="Insert Name">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="address" required>Address:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="address" placeholder="Insert Address">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" id="add" class="btn btn-success">Add</button>
            <a data-dismiss="modal" class="btn btn-danger" role="button">Cancel</a>
          </div>
        </div>
      </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<!-- Delete Student Modal -->

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Menghapus Data</h4>
      </div>
      <div class="modal-body">
        Are you sure you want to delete data?
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>-->
        <a name="delete-data" class="btn btn-danger btn-ok" role="button">Delete</a></td>
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>

<!-- Edit Student Modal -->

<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Mengubah Data</h4>
      </div>
      <div class="modal-body">
        <form action="{{url("index/update")}}" class="form-horizontal" method="POST">
          <div class="form-group">
            <label class="control-label col-sm-2" for="id">id:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control edit_id" id="id" name="id" readonly>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="name">Nama:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control edit_name" id="name" name="name" placeholder="Masukkan Nama" required>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="address">Depatemen:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control edit_address" id="address" name="address" placeholder="Masukkan Departemen" required>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button id="update" class="btn btn-primary" type="submit">Save</button></td>
              <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<!-- Student List -->

<div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Option</th>
      </tr>
    </thead>
    <tbody>
      <div class="student_list"></div>
      {% for d in data %}
      <tr>
        <td>{{d.id}}</td>
        <td>{{d.name}}</td>
        <td>{{d.address}}</td>
        <td>
          <!--<a href="index/edit/{{d.id}}" class="btn btn-warning" role="button">Edit</a>-->
          <a data-id="{{d.id}}" data-nama="{{d.name}}" data-depart="{{d.address}}" class="btn btn-warning" id="editbtn" data-toggle="modal" data-target="#editModal">Edit</a>
          <a href="" data-href="index/delete/{{d.id}}" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">Delete</a>
        </td>
      </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
