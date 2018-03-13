
<div class="row">
<div class="col-lg-8 col-md-10 mx-auto">

    <?php
        $i=0;
        foreach ($post as $p):  
            $i++;
    ?>

    <div class="post-preview">
    <a href="index.php?c=posts&m=view&key=<?php echo $p['post_id']; ?>">
        <h2 class="post-title">
        <?php echo $p['title']; ?>
        </h2>
        <h3 class="post-subtitle">
        <?php echo $p['description']; ?>
        </h3>
    </a>
    <p class="post-meta">Posted by
        <a href="#"><?php echo $p['user_id']; ?></a>
        <?php echo $p['datetime']; ?></p>
    </div>
    <?php 
    endforeach; 
    if ($i):
?>
<?php else: ?>
<tr>
    <td colspan="4" class="text-center"><strong>Chưa có bài đăng nào.</strong></td>
</tr>
<?php endif; ?>
    <hr>
    <!-- Pager -->
    <div class="clearfix">
    <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
    </div>
</div>
</div>