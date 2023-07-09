<?php 
include '../../../config/db.php';
?>

<?php 
$bulan = $_GET['bulan'];
// tampilkan data mengajar
$kelasMengajar = mysqli_query($con,"SELECT * FROM tb_mengajar 
	INNER JOIN tb_guru ON tb_mengajar.id_guru=tb_guru.id_guru

INNER JOIN tb_mapel ON tb_mengajar.id_mapel=tb_mapel.id_mapel
INNER JOIN tb_mkelas ON tb_mengajar.id_mkelas=tb_mkelas.id_mkelas

INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
WHERE tb_mengajar.id_mengajar='$_GET[pelajaran]' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1  ");

foreach ($kelasMengajar as $d) 
	// tampilkan data absen

	$qry = mysqli_query($con,"SELECT * FROM _logabsensi 
		INNER JOIN tb_siswa ON _logabsensi.id_siswa=tb_siswa.id_siswa
		INNER JOIN tb_mengajar ON _logabsensi.id_mengajar=tb_mengajar.id_mengajar
		INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
		INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
		WHERE MONTH(tgl_absen)='$bulan' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1
	 GROUP BY _logabsensi.id_siswa  ORDER BY _logabsensi.id_siswa ASC ");
foreach ($qry as $db)

	// tampilkan data walikelas
$walikelas = mysqli_query($con,"SELECT * FROM tb_walikelas INNER JOIN tb_guru ON tb_walikelas.id_guru=tb_guru.id_guru WHERE tb_walikelas.id_mkelas='$_GET[kelas]' ");
foreach ($walikelas as $walas) 

$tglBulan = $db['tgl_absen'];
$tglTerakhir = date('t',strtotime($tglBulan));

?>
 <style>
 	body{
 		font-family: arial;
 	}
 </style>
 <table width="100%">
 	<tr>
	 <td>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <img src="../../../assets/img/logo1.png" width="130" align='middle'>
 		</td>
 		<td>
 			<center>
 				<h1>
 					ABSENSI SISWA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 					<small> MA AN-NUR</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				</h1>
 				<hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				<em>
 					Jl. KH. Muntaha Kembang Jeruk Banyuates Sampang 69263&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br>Email : maannur2022@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				</em>
 	
 			</center>
 		</td>

 	</tr>
 </table>
 <hr style="height: 3px;border: 1px solid;">

 <table width="100%">
	<tr>
	<td align="left">
		<p>
			Mata Pelajaran
			<td>:</td>
    		<td><?=$d['mapel'] ?></td>
		</p>
	</td>
	<td align="rigth"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	Nama Kelas<td>:</td><td><?=$d['nama_kelas'] ?></td></p></td>
	<tr><td align="left">
		<p>Semester&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
			<td>:</td><td><?=$d['semester'] ?> TA. <?=$d['tahun_ajaran'] ?></td></p></td>
	
	<td align="right"><p>Wali Kelas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>:</td><td><?=$walas['nama_guru']  ?></td></p></td>
</table>


<table width="100%" border="1" cellpadding="2" style="border-collapse: collapse;">
  <tr>
    <td rowspan="2" bgcolor="#EFEBE9" align="center">NO</td>
    <td rowspan="2" bgcolor="#EFEBE9">NAMA SISWA</td>
    <td rowspan="2" bgcolor="#EFEBE9" align="center">L/P</td>
    <td colspan="<?=$tglTerakhir;?>" style="padding: 8px;">PERTEMUAN BULAN : <b style="text-transform: uppercase;"><?php echo namaBulan($bulan);?></b></td>
    <td colspan="4" align="center" bgcolor="#EFEBE9">JUMLAH</td>
  </tr>
  <tr>
	<?php 
	for ($i = 1; $i <=$tglTerakhir ; $i++) {
	echo "<td bgcolor='#EFEBE9' align='center'>".$i."</td>";
	}

	?> 
	<td bgcolor="#2196F3" align="center">H</td>
	<td bgcolor="#FFC107" align="center">S</td>
	<td bgcolor="#4CAF50" align="center">I</td>
	<td bgcolor="#D50000" align="center">A</td>
 
  </tr>
  	<?php 
	// tampilkan absen siswa
	$no=1;
	foreach ($qry as $ds) {
		$warna = ($no % 2 == 1) ? "#ffffff" : "#f0f0f0";
		?>
		<tr>

  <tr bgcolor="<?=$warna; ?>">
    <td align="center"><?=$no++; ?></td>
    <td><?=$ds['nama_siswa'];?></td>
    <td align="center"><?=$ds['jk'];?></td>
		<?php 
		for ($i = 1; $i <=$tglTerakhir ; $i++) {


		?>
		<td align="center" bgcolor="white">
		<?php 
		$ket = mysqli_query($con,"SELECT * FROM _logabsensi
		INNER JOIN tb_mengajar ON _logabsensi.id_mengajar=tb_mengajar.id_mengajar
		INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
		INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
		WHERE DAY(tgl_absen)='$i' AND id_siswa='$ds[id_siswa]' AND _logabsensi.id_mengajar='$_GET[pelajaran]' AND MONTH(tgl_absen)='$bulan' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1 GROUP BY DAY(tgl_absen) ");
		foreach ($ket as $h)
			
			// echo $h['ket'];
		if ($h['ket']=='H') {
				echo "<b style='color:#2196F3;'>H</b>";				
			}elseif ($h['ket']=='I') {
				echo "<b style='color:#4CAF50;'>I</b>";
			}elseif ($h['ket']=='S') {
				echo "<b style='color:#FFC107;'>S</b>";
			}elseif($h['ket']=='A'){
				echo "<b style='color:#D50000;'>A</b>";
			}

		 ?>
</td>
<?php
}
?>

<td align="center" style="font-weight: bold;">
<?php 
$hadir = mysqli_fetch_array(mysqli_query($con,"SELECT COUNT(ket) AS hadir FROM _logabsensi
	INNER JOIN tb_mengajar ON _logabsensi.id_mengajar=tb_mengajar.id_mengajar
		INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
		INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
 WHERE _logabsensi.id_siswa='$ds[id_siswa]' and _logabsensi.ket='H' and MONTH(tgl_absen)='$bulan' and _logabsensi.id_mengajar='$_GET[pelajaran]' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1 "));
echo $hadir['hadir'];

?>
</td>

<td align="center" style="font-weight: bold;">
<?php 
$sakit = mysqli_fetch_array(mysqli_query($con,"SELECT COUNT(ket) AS sakit FROM _logabsensi
	INNER JOIN tb_mengajar ON _logabsensi.id_mengajar=tb_mengajar.id_mengajar
		INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
		INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
 WHERE _logabsensi.id_siswa='$ds[id_siswa]' and _logabsensi.ket='S' and MONTH(tgl_absen)='$bulan' and _logabsensi.id_mengajar='$_GET[pelajaran]' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1 "));
echo $sakit['sakit'];

?>
</td>

<td align="center" style="font-weight: bold;">
<?php 
$izin = mysqli_fetch_array(mysqli_query($con,"SELECT COUNT(ket) AS izin FROM _logabsensi
	INNER JOIN tb_mengajar ON _logabsensi.id_mengajar=tb_mengajar.id_mengajar
		INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
		INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
 WHERE _logabsensi.id_siswa='$ds[id_siswa]' and _logabsensi.ket='I' and MONTH(tgl_absen)='$bulan' and _logabsensi.id_mengajar='$_GET[pelajaran]' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1 "));
echo $izin['izin'];

?>
</td align="center" style="font-weight: bold;">
<td align="center" style="font-weight: bold;">
	<?php 
$alfa = mysqli_fetch_array(mysqli_query($con,"SELECT COUNT(ket) AS alfa FROM _logabsensi
	INNER JOIN tb_mengajar ON _logabsensi.id_mengajar=tb_mengajar.id_mengajar
		INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
		INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
 WHERE _logabsensi.id_siswa='$ds[id_siswa]' and _logabsensi.ket='A' and MONTH(tgl_absen)='$bulan' and _logabsensi.id_mengajar='$_GET[pelajaran]' AND tb_mengajar.id_mkelas='$_GET[kelas]'  AND tb_thajaran.status=1 AND tb_semester.status=1 "));
echo $alfa['alfa'];

?>
</td>

   
  </tr>
<?php } ?>
</table>

<p></p>
<table width="100%">
	<td align="left">
		<p>Keterangan:</p>
			<ul>
				<li>H = Hadir</li>
				<li>S = Sakit</li>
				<li>I&nbsp; = Izin</li>
				<li>A = Alpha</li>
			</ul>
		</p>
	</td> 
		<td align="right">
			<p>
				Sampang, <?php echo date('d F Y'); ?>
			</p>
			<p>
				Guru Mata Pelajaran
				<br>
				<br>
				<br>
				<br>
				<br>
				<?=$d['nama_guru'] ?><br>
				-----------------------------<br>
				NIP.<?=$d['nip'] ?><br>  
			</p>
		</td>
	</tr>
</table>