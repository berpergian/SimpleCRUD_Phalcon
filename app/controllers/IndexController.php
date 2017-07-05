<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
      $data = Mahasiswa::find([
  			'order' => 'name'
  		]);
      
  		$this->view->data = $data;
    }

    public function editAction($nim)
    {
      $mhs = Mahasiswa::findFirst($nim);

   		$this->view->nim=$mhs->nim;
   		$this->view->name=$mhs->name;
   		$this->view->department=$mhs->department;
    }

    public function updateAction()
   	{
   		$nim = $this->request->getPost("nim");
   		$mhs = Mahasiswa::findFirst($nim);

      $mhs->nim = $nim;
   		$mhs->name = $this->request->getPost("name");
   		$mhs->department = $this->request->getPost("department");

   		if (!$mhs->save()) {
    		 	echo "Gagal Disimpan";
    		 }
    			else
    		 {
    			echo "Data Berhasil Diubah";
    		 }
   	}
    public function deleteAction($nim){
      $user = Mahasiswa::findFirst($nim);
      $user->delete();

      return $this->response->redirect('index');
    }
}
