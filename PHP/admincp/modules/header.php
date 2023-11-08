<div class="header">
    <div class="container text-center header-top">
        <div class="row">
            <div class="col-12">
                <a href="" class=""><img src="../img/logo.png" class="img-fluid header-img" alt=""></a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h1 class="admin-header fw-semibold">
                    Welcome to Admin Page
                </h1>
            </div>
        </div>
    </div>
    <div class="bg-primary-subtle header-bot">
        <div class="container">
            <nav class="navbar navbar-expand p-0">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                        <ul class="navbar-nav fs-6 nav-header">
                            <li class="nav-item">
                                <a class="nav-link <?php if (!isset($_GET['navigate'])) echo "active text-primary"; ?>" aria-current="page" href="index.php">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if (isset($_GET['navigate']) && $_GET['navigate'] == 'qldmsp') echo "active text-primary"; ?>" href="index.php?navigate=qldmsp&query=them">Quản lý danh mục</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if (isset($_GET['navigate']) && $_GET['navigate'] == 'qlsp') echo "active text-primary"; ?>" href="index.php?navigate=qlsp&query=them">Quản lý sản phẩm</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if (isset($_GET['navigate']) && $_GET['navigate'] == 'qlnd') echo "active text-primary"; ?>" href="index.php?navigate=qlnd&query=them">Quản lý người dùng</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if (isset($_GET['navigate']) && $_GET['navigate'] == 'qldh') echo "active text-primary"; ?>" href="index.php?navigate=qldh&query=them">Quản lý đơn hàng</a>
                            </li>
                        </ul>
                        <p class="admin-name h-100 m-0 d-flex">
                            Xin chào: <?php echo $_SESSION['loginadmin'] ?>
                            <a class="nav-link text-primary" href="index.php?navigate=dangxuat"> - Đăng xuất</a>
                        </p>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="modal-notify <?php if(isset($_SESSION['thongbao']) && $_SESSION['thongbao'] != '') echo "show" ?>">
        <div class="notify">
            <div class="notify-header">
                <p class="fs-5 fw-semibold mb-0">
                    Thông báo
                </p>
            </div>
            <div class="content">
                <p class="fs-6 fw-semibold mb-0 text-center notify-contents px-4">
                    <?php

                    if ($_SESSION['thongbao'] == 'themsp') {
                        echo "Thêm sản phẩm thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'xoasp') {
                        echo "Xóa sản phẩm thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'suasp') {
                        echo "Sửa sản phẩm thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'themhsp') {
                        echo "Thêm hãng sản phẩm thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'suahsp') {
                        echo "Sửa hãng sản phẩm thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'xoahsp') {
                        echo "Xóa hãng sản phẩm thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'themmucgia') {
                        echo "Thêm mức giá thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'suamucgia') {
                        echo "Sửa mức giá thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'xoamucgia') {
                        echo "Xóa mức giá thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'xoadh') {
                        echo "Xóa đơn hàng thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'suadh') {
                        echo "Sửa đơn hàng thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'giaohangok') {
                        echo "Giao đơn hàng thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'themtk') {
                        echo "Thêm người dùng thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'suatk') {
                        echo "Sửa người dùng thành công !";
                        unset($_SESSION['thongbao']);
                    } else if ($_SESSION['thongbao'] == 'xoatk') {
                        echo "Xóa người dùng thành công !";
                        unset($_SESSION['thongbao']);
                    }                                             
                ?></p>
            </div>
            <div class="action">
                <button id="btnhiden" class="btn btn-primary w-25">OK</button>
            </div>
        </div>
    </div>
</div>

<script>
const btnhiden = document.querySelector('#btnhiden');
const modal = document.querySelector('.modal-notify');
const notifyContent = document.querySelector('.notify');

notifyContent.addEventListener('click', function(e) {
    e.stopPropagation();
})

btnhiden.addEventListener('click', function() {
    modal.classList.remove('show');
})

modal.addEventListener('click', function() {
    modal.classList.remove('show');
})
</script>