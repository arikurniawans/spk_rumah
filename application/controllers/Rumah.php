<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rumah extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Rumah_model');

    }

    public function index()
    {
        $data['rumah'] = $this->Rumah_model->showRumah()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_rumah', $data);
        $this->load->view('parts/footer');
    }

    public function create()
    {
        $data = array(
            'nama_perumahan' => $this->input->post('nama'),
            'lokasi' =>$this->input->post('lokasi')
        );

        $simpan = $this->Rumah_model->createRumah($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('rumah');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('rumah');
        }

    }

    public function edit()
    {
        $id = $this->input->post('id');

        $data = array(
            'nama_perumahan' => $this->input->post('nama'),
            'lokasi' =>$this->input->post('lokasi')
        );

        $ubah = $this->Rumah_model->editRumah($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('rumah');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('rumah');
        }

    }

    public function delete()
    {
        $id = $this->input->post('id');
        
        $hapus = $this->Rumah_model->deleteRumah($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('rumah');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('rumah');
        }
    }

}