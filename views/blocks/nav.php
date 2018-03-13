  <!-- Navigation -->
    
      <div class="container">
        <a class="navbar-brand" href="index.php">Clearnblog</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item nav">
              <a class="nav-link" href="index.php" id="<?php echo (!isset($_GET['m']) ) ? 'abc': ''; ?>">Home</a>
            </li>
            <li class="nav-item nav">
              <a class="nav-link" href="/?c=index&m=about" id="<?php echo (isset($_GET['m']) && $_GET['m']==='about' ) ? 'abc': ''; ?>">About</a>
            </li>
            <li class="nav-item nav">
              <a class="nav-link" href="/?c=index&m=contact" id="<?php echo (isset($_GET['m']) && $_GET['m']==='contact' ) ? 'abc': ''; ?>">Contact</a>
            </li>
            <?php  
              if(isLogged()){
            ?>
            <li class="nav-item nav">
              <a class="nav-link" href="/?c=auth&m=logout" id="<?php echo (isset($_GET['m']) && $_GET['m']==='logout' ) ? 'abc': ''; ?>">Logout</a>
            </li>
            <li class="nav-item nav">
              <a class="nav-link" href="/?c=posts&m=add" id="<?php echo (isset($_GET['m']) && $_GET['m']==='add' ) ? 'abc': ''; ?>">post</a>
            </li>
            <?php }else{ ?>
              <li class="nav-item nav">
                <a class="nav-link" href="/?c=auth&m=login" id="<?php echo (isset($_GET['m']) && $_GET['m']==='login' ) ? 'abc': ''; ?>">Login</a>
              </li>
              <li class="nav-item nav">
                <a class="nav-link" href="/?c=auth&m=register" id="<?php echo (isset($_GET['m']) && $_GET['m']==='register' ) ? 'abc': ''; ?>">Register</a>
            </li>
            <?php } ?>

          </ul>
        </div>
      </div>

