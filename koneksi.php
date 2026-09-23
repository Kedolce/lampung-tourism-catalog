<?php
    $koneksi = mysqli_connect(
        "localhost",
        "root",
        "",
        "katalog_wisata_lampung"
    );

    if(!$koneksi){
        die("koneksi gagal : " . mysqli_connect_error());
    }
?>