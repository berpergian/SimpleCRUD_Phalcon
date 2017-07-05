<div class="page-header">
    <h3>List Mahasiswa</h3>
</div>

<a href="<?= $this->url->get('add') ?>" class="btn btn-success" role="button">Tambah</a>

<table class="table table-hover">
  <thead>
    <tr>
      <th>NIM</th>
      <th>Nama</th>
      <th>Departemen</th>
      <th>Option</th>
    </tr>
  </thead>
  <tbody>
  <?php foreach ($data as $d) { ?>
    <tr>
      <td><?= $d->nim ?></td>
      <td><?= $d->name ?></td>
      <td><?= $d->department ?></td>
      <td><a href="index/edit/<?= $d->nim ?>" class="btn btn-warning" role="button">Edit</a>
      <a href="index/delete/<?= $d->nim ?>" class="btn btn-danger" role="button">Hapus</a></td>
    </tr>
  <?php } ?>
  </tbody>
</table>
