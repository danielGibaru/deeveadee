<?php

class Deeveadee extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('Deeveadee_Model');
        $this->load->helper('url_helper');
    }

    public function index()
    {
        $data['Dvd'] = $this->Deeveadee_Model->get_dvd();
        $this->load->view('header.php');
        $this->load->view('deeveadee.php' , $data);
        $this->load->view('footer.php');
    }
    public function view($numD = NULL){
        $data['Dvd'] = $this->Deeveadee_Model->getByNum($numD);

        if (empty($data['Dvd'])) {
            show_404();
        }
        $this->load->view('header.php');
        $this->load->view('viewDvd.php', $data);
    }
}
