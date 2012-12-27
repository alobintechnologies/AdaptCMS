<script>
$(document).ready(function(){
	$("#MediaEditForm").validate();
});
</script>

<h2 class="left">Edit Media Library</h2>

<div class="right">
    <?= $this->Html->link(
        '<i class="icon-chevron-left"></i> Return to Index',
        array('action' => 'index'),
        array('class' => 'btn', 'escape' => false
    )) ?>
    <?= $this->Html->link(
        '<i class="icon-trash icon-white"></i> Delete',
        array('action' => 'delete', $this->request->data['Media']['id'], $this->request->data['Media']['title']),
        array('class' => 'btn btn-danger', 'escape' => false, 'onclick' => "return confirm('Are you sure you want to delete this media library?')"));
    ?>
</div>
<div class="clearfix"></div>

<?php
	echo $this->Form->create('Media', array('class' => 'well'));
	echo $this->Form->input('title', array(
		'type' => 'text', 
		'class' => 'required', 
		'ng-model' => 'title',
		'ng-init' => 'title="'.$this->request->data['Media']['title'].'"'
	));
	echo $this->Html->link('Attach Images <i class="icon icon-white icon-upload"></i>', '#media-modal', array('class' => 'btn btn-primary', 'escape' => false, 'data-toggle' => 'modal'));
?>
	<p>&nbsp;</p>
	<div class="selected-images span12 row">
		<?php if (!empty($this->request->data['File'])): ?>
			<?php foreach($this->request->data['File'] as $key => $file): ?>
				<?= $this->element('media_modal_image', array('image' => $file, 'key' => $key, 'check' => true)) ?>
			<?php endforeach ?>
		<?php endif ?>
	</div>

	<div class="clearfix"></div>
<?php

	echo $this->Form->hidden('modified', array('value' => $this->Time->format('Y-m-d H:i:s', time())));
    echo $this->Form->hidden('id');
	echo $this->Form->end('Submit');
?>

<?= $this->element('media_modal') ?>