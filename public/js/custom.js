$('#modalHapus').on('show.bs.modal', function(e) {
  //$(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
  $(this).find('.btn-ok').attr('href', $(e.relatedTarget).attr('data-href'));
  $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
});

/*$(document).on( "click", '.editbtn',function(e) {
  var nim = $(this).data('nim');
  var name = $(this).data('nama');
  var department = $(this).data('depart');

  $(".modal-body #nim").val( nim );
  $(".modal-body #name").val( name );
  $(".modal-body #department").val( department );
});*/
