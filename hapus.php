<?php
require 'functions.php';

$id_elektronik = $_GET["id"];

if(hapus($id_elektronik) > 0 ) {
    echo "
            <script>
                alert('data berhasil dihapus!');
                document.location.href = 'toko.php';
            </script>
        ";
}else{
    echo "
            <script>
                alert('data gagal dihapus!');
                document.location.href = 'toko.php';
            </script>
        ";
}

?>