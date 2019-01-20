<?php
App::uses('AppController', 'Controller');
/**
 * Writers Controller
 *
 * @property Writer $Writer
 * @property PaginatorComponent $Paginator
 */
class WritersController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Writer->recursive = 0;		
		$this->paginate = array(
			'fields' => array('name' ,'slug'),
			'limit' => 5,
			'order' => array('name', 'asc'),
			'paramType' => 'querystring',
			);
		$writers = $this->paginate();
		$this->set('writers', $writers);
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */

	public function view($slug = null) {
		$writer = $this->Writer->find('first',$options);
		$options = array(
			'conditions' => array('Writer.slug' => $slug),
			'recursive' => -1,
			);
		if (empty($writer)) {
			throw new NotFoundException(__('Không tìm thấy tác giả bạn cần tìm'));
		}
		$this->set('writer', $writer);
		//Phân trang book
		$this->paginate = array(
			'fields' => array('id', 'title', 'image', 'sale_price', 'slug'),
			'order' => array('created' => 'desc'),
			'limit' => 5,
			'joins' => array(
				array(
					'table' => 'books_writers',
					'alias' => 'bookWriter',
					'conditions' => 'bookWriter.book_id =  Book.id'
					),
				array(
					'table' => 'writers',
					'alias' => 'writer',
					'conditions' => 'bookWriter.writer_id = writer.id'
					),
				),
			'conditions' => array(
				'published' => 1,
				'Writer.slug' => $slug,
				),
			'contain' => array(
				'Writer' => array('name', 'slug'),
				),
			'paramType' => 'querystring'
			);
     
	    $books = $this->paginate('Book');
   		 $this->set('books', $books);
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Writer->create();
			if ($this->Writer->save($this->request->data)) {
				$this->Flash->success(__('The writer has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The writer could not be saved. Please, try again.'));
			}
		}
		$books = $this->Writer->Book->find('list');
		$this->set(compact('books'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Writer->exists($id)) {
			throw new NotFoundException(__('Invalid writer'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Writer->save($this->request->data)) {
				$this->Flash->success(__('The writer has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The writer could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Writer.' . $this->Writer->primaryKey => $id));
			$this->request->data = $this->Writer->find('first', $options);
		}
		$books = $this->Writer->Book->find('list');
		$this->set(compact('books'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->Writer->exists($id)) {
			throw new NotFoundException(__('Invalid writer'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Writer->delete($id)) {
			$this->Flash->success(__('The writer has been deleted.'));
		} else {
			$this->Flash->error(__('The writer could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
