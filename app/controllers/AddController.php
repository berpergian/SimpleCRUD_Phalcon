<?php

class AddController extends \Phalcon\Mvc\Controller
{
  public function indexAction()
  {

  }

  public function addAction()
  {
    $add = new Mahasiswa();

    $success = $add->save(
			$this->request->getPost(),
			array('nim','name', 'department')
		);

		if ($success) {
			echo "Data berhasil ditambah";
			echo PHP_EOL ;
			echo $this->tag->linkTo("index", "Lihat List Mahasiswa");
		} else {
			echo "Terjadi sebuah kesalahan: ";
			foreach ($add->getMessages() as $message) {
				echo $message->getMessage(), "<br/>";
			}
		}
  }
}
