<div class="row">
<div class="col-lg-8 col-md-10 mx-auto">
<?php foreach ($post as $p) { ?>
  <div class="content">
    <h4><a href="/?c=posts&m=view&key=<?php echo $p['post_id'] ?>"><?php echo $p['title']; ?> </a></h4>
    <p><?php echo $p['description'] ?></p>
  </div>
  <div class="img">
    <img src="public/img/<?php echo $p['images'] ?>" alt="">
  </div>
<?php  
}
?>
<p/>
  <p>Placeholder text by
    <a href="http://spaceipsum.com/">Space Ipsum</a>. Photographs by
    <a href="https://www.flickr.com/photos/nasacommons/">NASA on The Commons</a>.</p>
</div>
</div>