<h3>Đăng nhập hệ thống</h3>
<?php if (isset($error)): ?>
<div class="alert alert-error">
    <?php echo $error; ?>
</div>
<?php endif; ?>

<form name="sentMessage" id="contactForm" novalidate action="" method="post">
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Email</label>
      <input type="email" class="form-control" placeholder="Email Address" name="email" required data-validation-required-message="Please enter your name.">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Password</label>
      <input type="password" class="form-control" placeholder="password" name="password" required data-validation-required-message="Please enter your email address.">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <br>
  <div id="success"></div>
  <div class="form-group">
    <button type="submit" class="btn btn-primary" id="sendMessageButton">Login</button>
  </div>
</form>