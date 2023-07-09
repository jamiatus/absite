<?php 
$del = mysqli_query($con,"DELETE FROM tb_siswa WHERE id_siswa=$_GET[id]");
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
				window.location.replace('?page=siswa');
				} ,3000);   
				</script>";
}

 ?>