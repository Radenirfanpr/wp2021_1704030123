<?php
require "function.php";

// agar tidak bisa masuk secara pengetikan manual pada url
if (!isset($_GET['id'])) {
    header("location: index.php");
    exit;
}

$id = $_GET['id'];
if (hapus($id) > 0) {
    echo
    "<script>
        alert('data berhasil di hapus');
        document.location.href = 'index.php';
        </scrupt>";
} else {
    echo
    "<script>
        alert('data gagal dihapus');
        </scrupt>";
}

$iid = $_GET['id'];
if (delete($iid) > 0) {
    echo
    "<script>
        alert('data berhasil di hapus');
        document.location.href = 'index.php';
        </scrupt>";
} else {
    echo
    "<script>
        alert('data gagal dihapus');
        </scrupt>";
}
