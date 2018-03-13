<h3>Add post</h3>
<form action="" method="post">
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Title</label>
      <input type="text" class="form-control" placeholder="Enter Title" name="title" required data-validation-required-message="Please enter title.">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Description</label>
      <input type="text" class="form-control" placeholder="Enter Description" name="description" required data-validation-required-message="Please enter description.">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Content</label>
      <textarea rows="5" class="form-control" placeholder="content" name="content" required data-validation-required-message="Please enter a content."></textarea>
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <label style="color:#868EB1">Status</label>
  <input type="checkbox" class="form-control" placeholder="Enter Description" name="description" required data-validation-required-message="Please enter description.">
  <p class="help-block text-danger"></p>
  <label style="color:#868EB1">Category_id</label>
  <select name="category_id" id="" style="width:133px;">
  <?php foreach($category as $cate) : ?>
    <option value="<?php echo $cate['category_id'] ?>"><?php echo $cate['category_name'] ?></option>
  <?php  endforeach; ?>  
  </select>
  <p class="help-block text-danger"></p>
  <br>
  <div id="success"></div>
  <div class="form-group">
    <button type="submit" class="btn btn-primary" id="sendMessageButton">Post</button>
  </div>
</form>
