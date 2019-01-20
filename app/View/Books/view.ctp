<div class="books view">
<h2><?php echo __('Book'); ?></h2>
	<dl>
		<?php $books['0'] = $book; ?>
		<?php echo $this->element('books_show',array('books' => $books)) ?>

	</dl>


 <!-- Hiển thị comment -->
	<div class="related">
		<h3><?php echo __('Comments'); ?></h3>
		<?php if (!empty($book['Comment'])): ?>
		<?php foreach ($book['Comment'] as $comment): ?>
				<td><?php echo $comment['user_id']; ?></td>
				<td><?php echo $comment['content']; ?></td>
		<?php endforeach; ?>
	<?php endif; ?>
	</div>
	<!-- Đăng comment mới -->
	<br>
	<hr>
	<br>
	<br>
	<?php if (isset($errors)): ?>
		<?php foreach ($errors as $err): ?>
			<?php echo $err[0]; ?>
		<?php endforeach ?>
	<?php endif ?>

	<?php echo $this->Form->create(false, array(
    	'url' => array(
    		'controller' => 'Comments', 
    		'action' => 'add')
    		)
    	);?>
		<fieldset>
			<legend><?php echo __('Add Comment'); ?></legend>
		<?php
			echo $this->Form->input('user_id', array('required' => 'false', 'label' => '', 'type' => 'text', 'value' => 1, 'hidden' => true));
			echo $this->Form->input('book_id', array('required' => 'false', 'label' => '', 'type' => 'text', 'value' => $book['Book']['id'],  'hidden' => true));
			echo $this->Form->input('content');
		?>
		</fieldset>
	<?php echo $this->Form->end(__('Submit')); ?>
	</div>