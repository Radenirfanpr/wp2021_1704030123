<!DOCTYPE html>
<html lang="en">

<head>
  <title>Pertemuan 3</title>
</head>

<body>
  <?php 
      echo"<h2>Belajar Web Programing</h2>";
      echo ("Selamat Belajar<br>");
      echo "Saya Belajar Web Programming<br>";
      echo "Nama","Saya","Rio","Rizaldi";
   ?>

  <?php
      print "<h2>Belajar Web Programing</h2>";
      print "Nama saya Rio Rizaldi<br>";
      print "Hobi bermain scate board";
   ?>

  <?php
      $namadepan = "Rio";
      $namablk = "Rizaldi";
      $ttl = "Kebumen, 15-10-2001";
      $jeniskelamin = "Laki-Laki";
      $agama = "Islam";
      $fakultas = "Teknik Informatika";
      $mk = "Web Programing";
      $hobi = "Bermain Scate Board";
      $alamat = "Tangerang";
      $hp = "0838-9708-1271";
   ?>

  <h4>Indentitas diri</h4>
  <p>Nama : <?php echo $namadepan ." ". $namablk ; ?></p>
  <p>Tanggal Lahir : <?php echo (15102001) ; $ttl; ?></p>
  <p>Jenis Kelamin : <?php echo $jeniskelamin ; ?></p>
  <p>Agama : <?php echo $agama ; ?></p>
  <p>Fakultas : <?php echo $fakultas ; ?></p>
  <p>Mata Kuliah : <?php echo $mk ; ?></p>
  <p>Hobi : <?php echo $hobi ; ?></p>
  <p>Alamat : <?php echo $alamat ; ?></p>
  <p>Hp : <?php echo $hp ; ?></p>
</body>

</html>