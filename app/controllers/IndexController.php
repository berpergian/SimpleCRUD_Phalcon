<?php


class IndexController extends ControllerBase
{

    public function indexAction()
    {
      $data = Student::find([
        'order' => 'id'
      ]);

      $this->view->data = $data;
    }

    public function listAction()
    {

      $this->view->disable();
      $response = new response();
      $output = '';
      $data = Student::find([
        'order' => 'id'
      ]);

      $resData = array();

      foreach ($data as $result) {
        $resData[] = array("id" => $result->id, "name" => $result->name, "address" => $result->address);
      }

      $response->setContent(json_encode($resData));
      return $response;
    }

    public function addAction()
    {
      $add = new Student();

      $success = $add->save(
  			$this->request->getPost(),
  			array('id','name', 'address')
  		);

      if($success){
        $this->view->disable();
        $this->flashSession->success('Data saved successfully');
        $this->response->redirect('index');
      }
      else{
        $this->view->disable();
        $this->flashSession->error('Data failed to save');
        $this->response->redirect('index');
      }
    }

    /*public function editAction($id)
    {
      $mhs = Student::findFirst($id);

   		$this->view->id=$mhs->id;
   		$this->view->name=$mhs->name;
   		$this->view->address=$mhs->address;
    }*/

    public function updateAction()
   	{
   		$id = $this->request->getPost("id");
   		$mhs = Student::findFirst($id);

      $mhs->id = $id;
   		$mhs->name = $this->request->getPost("name");
   		$mhs->address = $this->request->getPost("address");

   		if (!$mhs->save()) {
        $this->view->disable();
        $this->flashSession->success('Successfully changed data');
        $this->response->redirect('index');
      }
      else
    	{
        $this->view->disable();
        $this->flashSession->error('Failed to change data');
        $this->response->redirect('index');
      }
   	}

    public function deleteAction($id){
      $user = Student::findFirst($id);
      $user->delete();

      return $this->response->redirect('index');
    }
}
