<?php
App::uses('AppController', 'Controller');
/**
 * Categories Controller
 *
 * @property Category $Category
 * @property PaginatorComponent $Paginator
 */
class CategoriesController extends AppController {

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
		$this->Category->recursive = 0;
		$this->set('categories', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($slug = null) {
		$category = $this->Category->find('first', $options);
		$options = array(
			'conditions' => array('Category.slug' => $slug),
			'recursive' => -1
			);
		if (empty($category)) {
			throw new NotFoundException(__('Không tìm thấy danh mục bạn cần tìm'));
		}		
		$this->set('category', $category);
		//Phân trang book
		$this->paginate = array(
			'fields' => array('id', 'title', 'image', 'sale_price', 'slug'),
			'order' => array('created' => 'desc'),
			'limit' => 5,
			'conditions' => array(
				'published' => 1,
				'Category.slug' => $slug,
				),
			'contain' => array(
				'Writer' => array('name', 'slug'),
				'Category' => array('slug'),	
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
			$this->Category->create();
			if ($this->Category->save($this->request->data)) {
				$this->Flash->success(__('The category has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The category could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Category->exists($id)) {
			throw new NotFoundException(__('Invalid category'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Category->save($this->request->data)) {
				$this->Flash->success(__('The category has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The category could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Category.' . $this->Category->primaryKey => $id));
			$this->request->data = $this->Category->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->Category->exists($id)) {
			throw new NotFoundException(__('Invalid category'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Category->delete($id)) {
			$this->Flash->success(__('The category has been deleted.'));
		} else {
			$this->Flash->error(__('The category could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
