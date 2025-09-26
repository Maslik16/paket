<?php
session_name('PELANGGAN_SESSION');
session_start();
// [CATATAN] Path ke koneksi mungkin perlu disesuaikan berdasarkan lokasi file ini
// Asumsi file ini ada di folder `actions` di dalam `includes`
include '../../includes/koneksi.php';

// Autentikasi: Pastikan hanya user yang login yang bisa menghapus
if (!isset($_SESSION['user_id'])) {
    header('Location: ../../pelanggan/login.php'); // Arahkan ke login yang benar
    exit;
}

// Cek apakah request adalah POST dan ada id_transaksi
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['id_transaksi'])) {
    $id_transaksi = $_POST['id_transaksi'];
    $user_id = $_SESSION['user_id']; // ID user dari session

    // Query DELETE yang aman
    // Memastikan user hanya bisa menghapus riwayat transaksinya sendiri
    $query = "DELETE FROM transaksi WHERE id_transaksi = ? AND id_user = ?";
    
    $stmt = mysqli_prepare($koneksi, $query);
    mysqli_stmt_bind_param($stmt, "ii", $id_transaksi, $user_id);

    if (mysqli_stmt_execute($stmt)) {
        // Cek apakah ada baris yang terhapus
        if (mysqli_stmt_affected_rows($stmt) > 0) {
            // [PERBAIKAN] Arahkan ke file riwayat.php yang benar
            header('Location: ../../public/pelanggan/riwayat.php?hapus=sukses');
            exit;
        }
    }
}

// [PERBAIKAN] Jika gagal, kembalikan ke halaman riwayat.php dengan pesan gagal
header('Location: ../../pelanggan/riwayat.php?hapus=gagal');
exit;
?>