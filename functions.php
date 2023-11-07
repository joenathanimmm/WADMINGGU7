<?php 

$conn = mysqli_connect('localhost', 'root', '', 'toko'); 

function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function tambah($data) {
    global $conn;

    $nama_elektronik = htmlspecialchars($data["nama_elektronik"]);
    $kode_elektronik = htmlspecialchars($data["kode_elektronik"]);
    $harga_elektronik = htmlspecialchars($data["harga_elektronik"]);
    $gambar_elektronik = htmlspecialchars($data["gambar_elektronik"]);

    $query = "INSERT INTO toko
        VALUES
        ('','$nama_elektronik', '$kode_elektronik', '$harga_elektronik','$gambar_elektronik')
        ";
    mysqli_query($conn, $query); 

    return mysqli_affected_rows($conn);
}

function hapus($id) {
    global $conn;
    mysqli_query($conn, "DELETE FROM toko WHERE id = $id");
    return mysqli_affected_rows($conn);
}

function ubah($data_elektronik) {
    global $conn;

    $id = $data_elektronik["id"];
    $nama_elektronik = htmlspecialchars($data_elektronik["nama_elektronik"]);
    $kode_elektronik = htmlspecialchars($data_elektronik["kode_elektronik"]);
    $harga_elektronik = htmlspecialchars($data_elektronik["harga_elektronik"]);
    $gambar_elektronik = htmlspecialchars($data_elektronik["gambar_elektronik"]);

    $query = "UPDATE toko SET
            nama = '$nama_elektronik',
            kode = '$kode_elektronik',
            harga = '$harga_elektronik',
            gambar = '$gambar_elektronik'
            WHERE id = $id
            ";
    mysqli_query($conn, $query); 

    return mysqli_affected_rows($conn);   
}
?>