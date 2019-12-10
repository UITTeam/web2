<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
</head>
<body style="background-size: auto 1700px">
  <?php
        session_start();
    //    session_destroy();
    ?>
    <?php
      include('./site/header.php');
      include('./site/menu.php');
    ?>
    <div class='content'>
    <?php
      include('./site/content.php');
    ?>
    </div>
     <?php
      include('./site/footer.php');
    ?>
</body>
</html> 