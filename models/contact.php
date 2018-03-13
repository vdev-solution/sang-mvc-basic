<?php  
    class Contact extends Model{
        public $table = "contact";
        // public $primary_key = "id_contact";

        public function addContact($postData){
            return $this->db_insert($this->table,$postData);
        }
    }
?>