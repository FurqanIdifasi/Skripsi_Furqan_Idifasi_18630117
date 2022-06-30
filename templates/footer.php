
  <footer class="main-footer bg-danger" >
    <strong>Copyright &copy;<?= date('Y');?> TELKOM AKSES
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="./assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="./assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="./assets/dist/js/demo.js"></script>
<script src="./assets/dist/js/script-menu.js"></script>
    	<script src="./assets/plugins/summernote/summernote-bs4.min.js"></script>

	<script>
	  $(function () {
	    // Summernote
	    $('.textarea').summernote({
	    	height: 300
	    });
	  });

	  
$(function () {
    var url = window.location;
    // for single sidebar menu
    $('ul.nav-sidebar a').filter(function () {
        return this.href == url;
    }).addClass('active');

    // for sidebar menu and treeview
    $('ul.nav-treeview a').filter(function () {
        return this.href == url;
    }).parentsUntil(".nav-sidebar > .nav-treeview")
        .css({'display': 'block'})
        .addClass('menu-open').prev('a')
        .addClass('active');
});
	</script>
	<script src="./assets/plugins/datatables/jquery.dataTables.js"></script>
	<script src="./assets/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
	<link rel="stylesheet" type="text/css" href="./assets/dist/css/tagsinput.css">
	<script src="./assets/dist/js/tagsinput.js"></script>
	<script>
	  $(function () {
	    $('#example2').DataTable({
	      "paging": true,
	      "lengthChange": false,
	      "searching": true,
	      "ordering": true,
	      "info": true,
	      "pageLength": 10,
	      "autoWidth": true,
	    });
	  });
	</script>



  <div class="modal fade" id="broadcast" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Broadcast Message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

     <form method="GET" action="send-message.php">
      <div class="modal-body">
        <input type="hidden" name="tipe" value="broadcast" class="form-control"/>
        <div class="form-group">

        <label>Tujuan</label>
       	<input type="text" name="hp" required placeholder="" data-role="tagsinput" class="form-controld" >
        </div>

        <div class="form-group">
          
        <label>Pesan</label>
        <input type="text" name="pesan" required="" autofocus id="pesan" class="form-control" />
        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Kirim</button>
      </div>

     </form>
    </div>
  </div>
</div>

</body>
</html>