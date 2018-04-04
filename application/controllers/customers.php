<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customers extends MY_Controller
{

    function __construct()
    {
        parent::__construct();
        if (! $this->user) {
            redirect('login');
        }
    }
    public function verifyNit () {
        $postNit = $_GET['val'];
        $getNit = Customer::find('first', array(
            'conditions' => array(
                'nit = ?',
                $postNit
            )
        ));

        $nit = $getNit->nit;
        echo $postNit;
    }
    public function index()
    {
        $this->view_data['customers'] = Customer::all();
        $this->content_view = 'customer/view';
    }

    public function add() {

        $postNit = $_POST['nit'];
        $getNit = Customer::find('first', array(
            'conditions' => array(
                'nit = ?',
                $postNit
            )
        ));

        $nit = $getNit->nit;

        if ($nit == $postNit) {
            $message = "El NIT ya existe en la base de datos";
            echo  "<script type='text/javascript'>alert('$message');</script>";
            redirect("/","refresh",$postNit);
        }else{

            date_default_timezone_set($this->setting->timezone);
            $date = date("Y-m-d H:i:s");
            $_POST['created_at'] = $date;
            $customer = Customer::create($_POST);

            $_GET ? redirect("/", "refresh") : redirect("customers", "refresh"); 
            
        }

        

    }

    public function edit($id = FALSE)
    {
        if ($_POST) {
            $customer = Customer::find($id);
            $customer->update_attributes($_POST);
            redirect("customers", "refresh");
        } else {
            $this->view_data['customer'] = Customer::find($id);
            $this->content_view = 'customer/edit';
        }
    }

    public function delete($id)
    {
        $customer = Customer::find($id);
        $customer->delete();
        redirect("customers", "refresh");
    }
}
