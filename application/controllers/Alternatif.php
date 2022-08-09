<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Alternatif_model');
        $this->load->model('Rumah_model');
        $this->load->model('Kriteria_model');
        $this->load->model('BobotKriteria_model');

    }

    public function index()
    {
        $data['alternatif'] = $this->Alternatif_model->showAlternatif()->result();
        $data['rumah'] = $this->Rumah_model->showRumah()->result();
        $data['c1'] = $this->Kriteria_model->showKriteriaC1()->result();
        $data['c2'] = $this->Kriteria_model->showKriteriaC2()->result();
        $data['c3'] = $this->Kriteria_model->showKriteriaC3()->result();
        $data['c4'] = $this->Kriteria_model->showKriteriaC4()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_alternatif', $data);
        $this->load->view('parts/footer');
    }

    public function create()
    {
        $data = array(
            'id_rumah' => $this->input->post('rumahan'),
            'c1' => $this->input->post('c1'),
            'c2' => $this->input->post('c2'),
            'c3' => $this->input->post('c3'),
            'c4' => $this->input->post('c4'),
        );

        $simpan = $this->Alternatif_model->createAlternatif($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('alternatif');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('alternatif');
        }
    }

}