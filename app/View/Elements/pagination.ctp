<div>
		<?php echo $this->Paginator->counter('Trang {:page}/ {:pages}, Hiển thị danh sách {:current}
		'.$object.' trong số {:count} '.$object); ?> <br><br><br>
		<?php echo $this->Paginator->prev('Quay lại') ?> |		
		<?php echo $this->Paginator->Numbers(array('separator' => ' - ')); ?> |
		<?php echo $this->Paginator->next(); ?>
</div>