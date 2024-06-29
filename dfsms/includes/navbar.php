     <nav class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar">
            <a id="navbar_toggle_btn" class="navbar-toggle-btn nav-link-hover" href="javascript:void(0);"><i class="ion ion-ios-menu"></i></a>
            <a class="navbar-brand" href="dashboard.php">
            <div id="logo-text">Dairy Farm Shop Management System</div>
            </a>
            <head>
                <link rel="dist/css/stylesheet" href="style.css">
            </head>
            <body>
                <script src="dist/js/script.js"></script>
            </body>
            <ul class="navbar-nav hk-navbar-content">

                <li class="nav-item dropdown dropdown-authentication">
                    <a class="nav-link dropdown-toggle no-caret" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="media">
                            <div class="media-img-wrap">
                                <div class="avatar">
                                    <img src="dist/img/ios7-contact-outline.png" alt="user" class="avatar-img rounded-circle">
                                </div>
                                <span class="badge badge-success badge-indicator"></span>
                            </div>
<?php 
//Getting admin name
$adminid=$_SESSION['aid'];
$query=mysqli_query($con,"select AdminName from tbladmin where id='$adminid'");
$row=mysqli_fetch_array($query);
?>                            
                            <div class="media-body">
                                <span><?php echo $row['AdminName'];?><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        <a class="dropdown-item" href="profile.php"><img src="dist/img/person.png"><span>Profile</span></a>
                        <a class="dropdown-item" href="change-password.php"><img src="dist/img/ios7-unlocked.png"><span>Change Password</span></a>
                        <div class="dropdown-divider"></div>
                        <div class="sub-dropdown-menu show-on-hover">
                            <a href="#" class="dropdown-toggle dropdown-item no-caret"><i class="zmdi zmdi-check text-success"></i>Online</a>
                      
                        </div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="logout.php"><img src="dist/img/log-out.png"><span>Log out</span></a>
                    </div>
                </li>
            </ul>
        </nav>