<div class='content'>
    <?php
        if (isset($_GET['click']))
        {
            $temp = $_GET['click']; // temp chứa những gì có trong biến menu

        } else {
            $temp = '';
        }

        if ($temp == 'home') {
            include ('site/home.php');
        }
        else if ($temp == 'test')
        {
            include ('site/test-list.php');
        }
        else if ($temp == 'about'){
            include ('site/about.php');
        }
        else if ($temp == 'doing-test') {
            include ('site/doing-test.php');
        }
        else if ($temp == 'test-choosen') {
            include ('site/test-detail.php');
        }
        else if ($temp == 'info')
        {
            include ('site/user-left/user-menu.php');
            include ('site/user-right/user-info.php');
            
        }
        else if ($temp == 'editPro')
        {
            include ('site/user-left/user-menu.php');
            include ('site/user-right/user-info-edit.php');
        }
        else if ($temp == 'editPass')
        {
            include ('site/user-left/user-menu.php');
            include ('site/user-right/user-info-password.php');
        }
        else if ($temp == 'manage')
        {
            include ('site/user-left/user-menu.php');
            include ('site/user-right/user-manage.php');
        }
        else if ($temp == 'lo')
        {
            include ('site/user-left/user-menu.php');
            include ('site/user-right/user-lo.php');
        }
        else {
            include ('site/home.php');
        }
    ?>
</div>