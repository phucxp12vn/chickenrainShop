<?php 

App::uses('AppController','Controller');

class NotesController extends AppController {
	public function index() {
		$notes = $this->Note->find('all',array(
			'order' => array('Note.title' => 'desc')));
		// var_dump($notes[1]['Note']);
		// die();
		$this->set('notes',$notes);
	}
}
?>