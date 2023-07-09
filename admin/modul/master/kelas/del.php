<?php 
$del = mysqli_query($con,"DELETE FROM tb_mkelas WHERE id_mkelas=$_GET[id]");
if ($del) {
		echo " 
		<script type='text/javascript'>
				setTimeout(function () { 

				swal('Sukses', 'Satu Data Berhasil dihapus', {
				icon : 'success',
				buttons: {        			
				confirm: {
				className : 'btn btn-success'
				}
				},
				});    
				},10);  
				window.setTimeout(function(){ 
				window.location.replace('?page=master&act=kelas');
				} ,3000);   
				</script>";
}

 ?>