<h3 class="theme-color-bold">View and Buy Equipment</h3>
<h4>Find the very latest in camera technology for sale.</h4>
<div class="row">
	<div class="col-md-6">
		<?php echo $this->Html->link('&raquo; New Equipment', array('controller' => 'listings', 'action' => 'index'), array('class' => 'btn btn-primary btn-sm btn-block', 'escape' => false)); ?>
		<?php echo $this->Html->image('news.jpg'); ?>
		<div class="well">
			<p> 
			Lorem Ipsum is simply dummy text of the printing and typesetting industry.
			</p>
			<?php echo $this->Html->link('Read more &raquo;', array('controller' => 'listings', 'action' => 'view', 1), array('class' => 'read-more', 'escape' => false)); ?>
		</div>
	</div>
	<div class="col-md-6">
		<?php echo $this->Html->link('&raquo; Used Equipment', array('controller' => 'listings', 'action' => 'index'), array('class' => 'btn btn-default btn-sm btn-block', 'escape' => false)); ?>
		<?php echo $this->Html->image('news.jpg'); ?>
		<div class="well">
			<p> 
			Lorem Ipsum is simply dummy text of the printing and typesetting industry.
			</p>
			<?php echo $this->Html->link('Read more &raquo;', array('controller' => 'listings', 'action' => 'view', 1), array('class' => 'read-more', 'escape' => false)); ?>
		</div>
	</div>
</div>