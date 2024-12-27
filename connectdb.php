<?php
$DB_HOST = 'localhost';
$DB_USER = 'root';
$DB_PASS = '';
$DB_NAME = '9_project_k71';

$timeout = 1; // Thời gian chờ là 3 giây

// Cấu hình cài đặt thời gian chờ kết nối
ini_set('mysql.connect_timeout', $timeout); // Thời gian chờ kết nối
ini_set('default_socket_timeout', $timeout); // Thời gian chờ cho socket

try {
    $conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

    if ($conn->connect_errno) {
        // Nếu không thể kết nối, chuyển hướng đến trang 404
        header("Location: ./404.html");
        exit();
    } else {
        $conn->set_charset("utf8");
    }
} catch (mysqli_sql_exception $e) {
    // Bắt lỗi ngoại lệ và chuyển hướng đến trang 404
    header("Location: ./404.html");
    exit();
}