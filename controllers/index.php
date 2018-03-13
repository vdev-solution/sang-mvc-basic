<?php

require_once('models/user.php');
require_once('models/posts.php');
require_once('models/contact.php');

function index_index() {
     $data = array();

     $postController = new Posts();
     $data['post']=$postController->getAllByUserId();
     $data['template_file']='home/index.php';
    $data['header'] = array('title' =>'Clearnblog','description'=>'index');
    render('layout.php', $data);
}


//tạo hàm contact
function index_about() {
    $data = array();
    $data['template_file']='home/about.php';
    $data['header'] = array('title' =>'About','description'=>'desciption about');
   render('layout.php', $data);
}



function index_contact() {
    $data = array();
    $data['template_file']='home/contact.php';
    $data['header'] = array('title' =>'Contact','description'=>'desciption contact');

    $contact=new Contact();
    

    if (isPostRequest()) {
        $postData=postData();
        if($contact->addContact($postData)){
            $data['template_file']='home/contact.php';
        }else{
            echo "Chưa gửi được yêu cầu";
        }
    }
   render('layout.php', $data);
}

?>


