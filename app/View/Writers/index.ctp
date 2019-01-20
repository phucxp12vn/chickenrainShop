<div class="writers index">
	<h2><?php echo __('Tác giả'); ?></h2>
	<?php echo $this->Paginator->sort('name',"Sắp xếp theo kí tự") ?><br><br>
	<?php foreach ($writers as $writer) { ?>
		<p><?php echo $writer['Writer']['name'] ?></p>
	<?php } ?>
	<?php echo $this->element('pagination', array('object' => 'tác giả')) ?>
</div>
