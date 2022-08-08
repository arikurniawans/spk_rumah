<?php

class Kriteria_model extends CI_Model
{
    public function createSubkriteriaC1($data)
    {
        $subkriteria = $this->db->insert('kriteria_c1',$data);
        return $subkriteria;
    }

    public function createSubkriteriaC2($data)
    {
        $subkriteria = $this->db->insert('kriteria_c2',$data);
        return $subkriteria;
    }

    public function createSubkriteriaC3($data)
    {
        $subkriteria = $this->db->insert('kriteria_c3',$data);
        return $subkriteria;
    }

    public function createSubkriteriaC4($data)
    {
        $subkriteria = $this->db->insert('kriteria_c4',$data);
        return $subkriteria;
    }

    public function createSubkriteriaC5($data)
    {
        $subkriteria = $this->db->insert('kriteria_c5',$data);
        return $subkriteria;
    }

    public function createSubkriteriaC6($data)
    {
        $subkriteria = $this->db->insert('kriteria_c6',$data);
        return $subkriteria;
    }

    public function showKriteriaC1()
    {
        $query = $this->db->get('v_kriteria_c1');        
        return $query;
    }

    public function showKriteriaC2()
    {
        $query = $this->db->get('v_kriteria_c2');        
        return $query;
    }

    public function showKriteriaC3()
    {
        $query = $this->db->get('v_kriteria_c3');        
        return $query;
    }

    public function showKriteriaC4()
    {
        $query = $this->db->get('v_kriteria_c4');        
        return $query;
    }

    public function showKriteriaC5()
    {
        $query = $this->db->get('v_kriteria_c5');        
        return $query;
    }

    public function showKriteriaC6()
    {
        $query = $this->db->get('v_kriteria_c6');        
        return $query;
    }

    public function showBobot()
    {
        $this->db->order_by('id_nilai','ASC');
        $query = $this->db->get_where('bobot_nilai');        
        return $query;
    }

    public function editKriteria($id,$data)
    {
        $this->db->where('id_kriteria',$id);
        $this->db->update('kriteria',$data);
        return true;
    }

    public function showJumlah()
    {
        $this->db->select('SUM(nilai) AS n_kriteria');
        $query = $this->db->from('kriteria');        
        return $query;
    }
    
    public function detailKriteria($id)
    {
        $this->db->order_by('id_kriteria','ASC');
        $query = $this->db->get_where('kriteria', array('id_kriteria' => $id));        
        return $query;
    }

}
