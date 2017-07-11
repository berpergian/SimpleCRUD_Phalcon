$('#modalHapus').on('show.bs.modal', function(e) {
  //$(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
  $(this).find('.btn-ok').attr('href', $(e.relatedTarget).attr('data-href'));
  $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
});

$(document).on( "click", '.edit_button',function(e) {
  var nim = $(this).data('nim');
});

$(".btn[data-target='#modalUbah']").click(function() {
       var columnHeadings = $("thead th").map(function() {
                 return $(this).text();
              }).get();
       columnHeadings.pop();
       var columnValues = $(this).parent().siblings().map(function() {
                 return $(this).text();
       }).get();
  var modalBody = $('<div id="modalContent"></div>');
  var modalForm = $('<form action="{{url("index/update")}}" class="form-horizontal" method="POST">');
  $.each(columnHeadings, function(i, columnHeader) {
       var formGroup = $('<div class="form-group"></div>');
       formGroup.append('<label class="control-label col-sm-2" for="'+columnHeader+'">'+columnHeader+'</label>');
       formGroup.append('<div class="col-sm-8"><input class="form-control" name="'+columnHeader+i+'" id="'+columnHeader+i+'" value="'+columnValues[i]+'" /></div>');
       modalForm.append(formGroup);
  });
  //formGroup.append('<div class="form-group"><div class="col-sm-offset-2 col-sm-10"><a class="btn btn-primary" role="button">Simpan</a></td><button type="button" class="btn btn-default" data-dismiss="modal">Batal</button></div></div>');
  modalBody.append(modalForm);
  $('.modal-body').html(modalBody);
});
/*$('.modal-footer .btn-primary').click(function() {
   $('form[name="modalForm"]').submit();
});*/
