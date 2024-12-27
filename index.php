<?php
include 'connectdb.php';
include 'function.php';
// if (isLogin()) {
// 	header("Location: src/homeScreen.php");
// 	exit();
// } else {
// 	header("Location: index.php");
// 	exit();

// }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NHH-Learning</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <section>
        <div class="bg">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <main>
            <nav>
                <div class="logoBx">
                    <img src="./img/logo.png" alt="logo">
                </div>
                <div class="menu">
                    <ul>
                        <li>
                            <a href="#">Trang chủ</a>
                        </li>
                        <li>
                            <a href="src/about.php">Giới thiệu</a>
                        </li>
                        <li>
                            <a href="contact.html">Liên hệ</a>
                        </li>
                        <li>
                            <a href="courses1.html">Khóa học</a>
                        </li>
                    </ul>
                    <div class="searchBx">
                        <input type="text" placeholder="Biến ước mơ thành hiện thực" readonly>
                        <i class="fa-solid fa-graduation-cap"></i>
                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="text">
                    <h5>Hãy</h5> <br>
                    <h2>Nỗ lực học tập<br><span>ở mọi nơi</span></h2>

                    <div class="btnBx">
                        <button> <a href="./src/login.php" style="text-decoration: none ; color: whitesmoke;">
                                Đăng nhập </a> </button>
                        <button> <a href="./src/register.php" style="text-decoration: none ;"> Đăng
                                kí </a> </button>
                    </div>
                    <div class="iconBx">
                        <a href="https://www.instagram.com/hai_nguyen_191/" target="_blank"><i
                                class="fa-brands fa-instagram"></i></a>
                        <a href="https://www.facebook.com/hong.hai.7524" target="_blank"><i
                                class="fa-brands fa-facebook-f"></i></a>
                        <a href="https://www.tiktok.com/@hainguyen_191" target="_blank"><i
                                class="fa-brands fa-tiktok"></i></a>
                        <a href="https://github.com/hainguyehong" target="_blank"><i
                                class="fa-brands fa-github"></i></a>
                    </div>
                </div>
                <div class="imgBx">
                    <div class="img">
                        <img src="./img.png" alt="img">
                    </div>
                    <div class="rec">
                        <span style="--clr:#6060d8; --widHei:15px"></span>
                        <span style="--clr:#8f94ef; --widHei:10px"></span>
                        <span style="--clr:#8f94ef; --widHei:10px"></span>
                        <span style="--clr:#8f94ef; --widHei:10px"></span>
                    </div>
                    <div class="chatBx">
                        <a href="#"><i class="fa-regular fa-comment-dots"></i></a>
                    </div>
                </div>
            </div>
            <div class="triangle">
                <span>
                    <svg width="250" height="250" viewBox="-50 -50 300 300">
                        <polygon class="triangle" stroke-linejoin="round" points="100,0 0,200 200,200" />
                    </svg>
                </span>
                <span>
                    <svg width="250" height="250" viewBox="-50 -50 300 300">
                        <polygon class="triangle" stroke-linejoin="round" points="100,0 0,200 200,200" />
                    </svg>
                </span>
                <span>
                    <svg width="250" height="250" viewBox="-50 -50 300 300">
                        <polygon class="triangle" stroke-linejoin="round" points="100,0 0,200 200,200" />
                    </svg>
                </span>
                <span>
                    <svg width="250" height="250" viewBox="-50 -50 300 300">
                        <polygon class="triangle" stroke-linejoin="round" points="100,0 0,200 200,200" />
                    </svg>
                </span>
                <span>
                    <svg width="250" height="250" viewBox="-50 -50 300 300">
                        <polygon class="triangle" stroke-linejoin="round" points="100,0 0,200 200,200" />
                    </svg>
                </span>
            </div>
        </main>
    </section>
</body>

</html>