<?php 
$del = mysqli_query($con,"DELETE FROM tb_mapel WHERE id_mapel=$_GET[id]");
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
				window.location.replace('?page=master&act=mapel');
				} ,3000);   
				</script>";
}

 ?>