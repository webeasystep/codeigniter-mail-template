<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Settings_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }


    function update()
    {
        $this->db->where('OptionName','activation_mail');
        $this->db->set('OptionValue',$this->input->post('activation_mail'));
        $this->db->update('tboptions');

        $this->db->where('OptionName','activation_subject');
        $this->db->set('OptionValue',$this->input->post('activation_subject'));
        $this->db->update('tboptions');

        $this->db->where('OptionName','activation_content');
        $this->db->set('OptionValue',$this->input->post('activation_content'));
        $this->db->update('tboptions');

    }


    function get_option($Field)
    {
         $this->db->where('OptionName',$Field);
         $this->db->select('OptionValue');
        $result= $this->db->get('tboptions');
        return $result->row()->OptionValue;
    }

}