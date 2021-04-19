<?php
require("koneksi.php");
$perintah = "SELECT * FROM laporan";
$eksekusi = mysqli_query($konek, $perintah); 
$cek = mysqli_affected_rows($konek);

if ($cek > 0){
	$response["kode"] = 1;
	$response["pesan"] = "Data Ada";
	$response["data"] = array();


	while($ambil = mysqli_fetch_object($eksekusi)){
		$F ["id_laporan"] = $ambil->id_laporan;
		$F ["no_laporan"] = $ambil->no_laporan;
		$F ["nik_pelapor"] = $ambil->nik_pelapor;
		$F ["nama_pelapor"] = $ambil->nama_pelapor;
		$F ["tanggal_lapor"] = $ambil->tanggal_lapor;
		$F ["tempat"] = $ambil->tempat;
		$F ["terlapor"] = $ambil->terlapor;
		$F ["tindak_pidana"] = $ambil->tindak_pidana;
		$F ["saksi"] = $ambil->saksi;
		$F ["korban"] = $ambil->korban;
		$F ["apa_terjadi"] = $ambil->apa_terjadi;
		$F ["no_hp"] = $ambil->no_hp;
		$F ["no_wa"] = $ambil->no_wa;

		array_push($response["data"], $F);
		}
	}
	else {
	$response["kode"] = 0;
	$response["pesan"] = "Data Tidak Ada";
}

echo json_encode($response);
mysqli_close($konek);