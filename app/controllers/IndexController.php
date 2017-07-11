<?php


class IndexController extends ControllerBase
{

    public function indexAction()
    {
      $data = Mahasiswa::find([
        'order' => 'nim'
      ]);

      $this->view->data = $data;
    }

    public function addAction()
    {
      $add = new Mahasiswa();

      $success = $add->save(
  			$this->request->getPost(),
  			array('nim','name', 'department')
  		);

      if($success){
        $this->view->disable();
        $this->flashSession->success('Berhasil menyimpan data');
        $this->response->redirect('index');
      }
      else{
        $this->view->disable();
        $this->flashSession->error('Gagal menyimpan data');
        $this->response->redirect('index');
      }
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
