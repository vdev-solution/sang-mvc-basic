
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
			<?php foreach ($post as $p) { ?>
				<h1><?php echo $p['title']; ?> </h1>
				<?php echo $p['content'];
			}
			?>
			<p/>
				<p>Placeholder text by
					<a href="http://spaceipsum.com/">Space Ipsum</a>. Photographs by
					<a href="https://www.flickr.com/photos/nasacommons/">NASA on The Commons</a>.</p>
			</div>
		</div>
	</div>

	<h3 class="text-danger">Show comment</h3>
		
		<?php 

			foreach ($data['cmt'] as $key => $value) {
				echo "<p>". $value['content'] . "</p>";
			}

		 ?>

	<h3 class="text-center">Comment</h3>
	<form action="" method="post">
	<div class="control-group">
		<div class="form-group floating-label-form-group controls">
			<label>Email Address</label>
			<input type="email" class="form-control" placeholder="Email Address" name="email" required data-validation-required-message="Please enter your email address.">
			<p class="help-block text-danger"></p>
		</div>
	</div>
	<div class="control-group">
		<div class="form-group floating-label-form-group controls">
			<label>Content</label>
			<textarea rows="5" class="form-control" placeholder="Content" name="content" required data-validation-required-message="Please enter a message."></textarea>
			<p class="help-block text-danger"></p>
		</div>
	</div>
	<br>
	<div id="success"></div>
	<div class="form-group">
		<button type="submit" class="btn btn-primary" id="sendMessageButton">Send</button>
	</div>
</form>
</article>
		
	


