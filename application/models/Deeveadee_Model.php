<?php

/**
 * blabla
 */
class Deeveadee_Model extends CI_Model{

    function __construct(){
        $this->load->database();
    }
    public function get_dvd($numD = FALSE){
            $query = $this->db->get('Dvd');
            return $query->result_array();
        }
        public function getByNum($numD){
    $query = $this->db->get_where('Dvd',array('numD' => $numD));
    return $query->row_array();
    }
}
