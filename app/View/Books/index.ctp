<div class="books index">
	<h2><?php echo __('Sách Mới'); ?></h2>
	<h4><?php echo $this->Html->link('Xem thêm','/sach-moi'); ?></h4>
	<?php echo $this->element('books_show',array('books' => $books)) ?>
</div>
