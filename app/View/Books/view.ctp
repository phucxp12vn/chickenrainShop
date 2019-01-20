<div class="books view">
<h2><?php echo __('Book'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($book['Book']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Category'); ?></dt>
		<dd>
			<?php echo $this->Html->link($book['Category']['name'], array('controller' => 'categories', 'action' => 'view', $book['Category']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Title'); ?></dt>
		<dd>
			<?php echo h($book['Book']['title']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Slug'); ?></dt>
		<dd>
			<?php echo h($book['Book']['slug']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Image'); ?></dt>
		<dd>
			<?php echo h($book['Book']['image']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Info'); ?></dt>
		<dd>
			<?php echo h($book['Book']['info']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Price'); ?></dt>
		<dd>
			<?php echo h($book['Book']['price']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Sale Price'); ?></dt>
		<dd>
			<?php echo h($book['Book']['sale_price']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Publisher'); ?></dt>
		<dd>
			<?php echo h($book['Book']['publisher']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Publish Date'); ?></dt>
		<dd>
			<?php echo h($book['Book']['publish_date']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Link Download'); ?></dt>
		<dd>
			<?php echo h($book['Book']['link_download']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Published'); ?></dt>
		<dd>
			<?php echo h($book['Book']['published']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($book['Book']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($book['Book']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Book'), array('action' => 'edit', $book['Book']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Book'), array('action' => 'delete', $book['Book']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $book['Book']['id']))); ?> </li>
		<li><?php echo $this->Html->link(__('List Books'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Book'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category'), array('controller' => 'categories', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Comments'), array('controller' => 'comments', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Comment'), array('controller' => 'comments', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Writers'), array('controller' => 'writers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Writer'), array('controller' => 'writers', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php echo __('Related Comments'); ?></h3>
	<?php if (!empty($book['Comment'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('User Id'); ?></th>
		<th><?php echo __('Book Id'); ?></th>
		<th><?php echo __('Content'); ?></th>
		<th><?php echo __('Created'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($book['Comment'] as $comment): ?>
		<tr>
			<td><?php echo $comment['id']; ?></td>
			<td><?php echo $comment['user_id']; ?></td>
			<td><?php echo $comment['book_id']; ?></td>
			<td><?php echo $comment['content']; ?></td>
			<td><?php echo $comment['created']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'comments', 'action' => 'view', $comment['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'comments', 'action' => 'edit', $comment['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'comments', 'action' => 'delete', $comment['id']), array('confirm' => __('Are you sure you want to delete # %s?', $comment['id']))); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Comment'), array('controller' => 'comments', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
<div class="related">
	<h3><?php echo __('Related Writers'); ?></h3>
	<?php if (!empty($book['Writer'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Name'); ?></th>
		<th><?php echo __('Slug'); ?></th>
		<th><?php echo __('Biography'); ?></th>
		<th><?php echo __('Created'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($book['Writer'] as $writer): ?>
		<tr>
			<td><?php echo $writer['id']; ?></td>
			<td><?php echo $writer['name']; ?></td>
			<td><?php echo $writer['slug']; ?></td>
			<td><?php echo $writer['biography']; ?></td>
			<td><?php echo $writer['created']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'writers', 'action' => 'view', $writer['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'writers', 'action' => 'edit', $writer['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'writers', 'action' => 'delete', $writer['id']), array('confirm' => __('Are you sure you want to delete # %s?', $writer['id']))); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Writer'), array('controller' => 'writers', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
