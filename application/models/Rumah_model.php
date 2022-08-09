<?php

class Rumah_model extends CI_Model
{

    public function createRumah($data)
    {
        $rumah = $this->db->insert('rumah',$data);
        return $rumah;
    }

    public function showRumah()
    {
        $this->db->order_by('id_rumah','DESC');
        $query = $this->db->get('rumah');        
        return $query;
    }

    public function editRumah($id,$data)
    {
        $this->db->where('id_rumah',$id);
        $this->db->update('rumah',$data);
        return true;
    }

    public function deleteRumah($id)
    {
        $this->db->where('id_rumah',$id);
        $this->db->delete('rumah');
        return true;
    }

}
