<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/* @property settings_model $settings_model */

class Mailing_settings extends back_end {

    function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('settings_model');
        $this->load->helper('email');
        $this->load->library('email');

    }

    function index()
    {
        $this->form_validation->set_error_delimiters("<span class='incorrect'>", "</span>");
        $this->form_validation->set_rules('activation_mail', 'activation_mail', 'trim|valid_email');
        $this->form_validation->set_rules('activation_subject', 'activation_subject', 'trim');
        $this->form_validation->set_rules('activation_content', 'activation_content', 'trim');

        if($this->form_validation->run($this) == FALSE)
        {
            // mail settings //
            $data['activation_mail'] = $this->settings_model->get_option('activation_mail');
            $data['activation_subject'] = $this->settings_model->get_option('activation_subject');
            $data['activation_content'] = $this->settings_model->get_option('activation_content');

            $this->view('content/settings_edit', $data);
        }else{
            $this->settings_model->update();
            $this->session->set_flashdata('success_msg', 'settings successfully updated');
            redirect('Mailing_settings/');
        }
    }

    function send_mail() {

        // add any data you want in this array
        $data_map = array(
            '[[CUSTOMER_NAME]]' => 'Ahmed Fakhr',
            '[[PRODUCT_NAME]]' => 'Webeasystep.com',
            '[[ACTIVATION_NUMBER]]' => '123456'
        );

        $config['mailtype'] = 'html';
        $this->email->set_newline("\r\n");
        $this->email->set_header('MIME-Version', '1.0; charset=utf-8'); //must add this line
        $this->email->set_header('Content-type', 'text/html'); //must add this line
        $this->email->initialize($config);
        $this->email->from($this->settings_model->get_option('activation_mail'), "webeasystep"); // your mail address
        $this->email->to('webeasystep@gmail.com'); //  customer mail address
        $this->email->subject($this->settings_model->get_option('activation_subject'));
        // select template from database
        $template = $this->settings_model->get_option('activation_content');
        // make replacement with array against data_mail before send
        $message = str_replace(array_keys($data_map), array_values($data_map), $template);
        // send email
        $this->email->message($message);
        $this->email->send();


    }

}





/* End of file settings.php */
/* Location: ./application/controllers/admin/Settings.php */

