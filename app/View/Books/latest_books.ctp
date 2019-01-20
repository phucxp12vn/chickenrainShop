<div class="books index">
	<h2><?php echo __('Sách Mới'); ?></h2>
	<p>
		<?php echo $this->Paginator->sort('title','Theo tên'); ?> |
		<?php echo $this->Paginator->sort('publish_date','Theo ngày phát hành'); ?>
	</p>
	<?php echo $this->element('books_show',array('books' => $books)) ?>
	<?php echo $this->element('pagination', array('object' => 'sách')) ?>
</div>
