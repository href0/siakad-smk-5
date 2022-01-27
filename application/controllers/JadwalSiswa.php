<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jadwalsiswa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->kd_kelas = $this->session->userdata('kd_kelas');
    }


    public function index()
    {
        $sql_datajadwal    = "SELECT tj.id_jadwal,tj.kd_kelas, tm.nama_mapel, tg.id_guru, tg.nama_guru, tr.kd_ruangan, tj.hari, 				   tj.jam
							   FROM tbl_jadwal AS tj, tbl_mapel AS tm, tbl_guru AS tg, tbl_ruangan AS tr
							   WHERE tj.kd_mapel = tm.kd_mapel AND tj.id_guru = tg.id_guru AND tj.kd_ruangan = tr.kd_ruangan and tj.kd_kelas ='" . $this->kd_kelas . "' ";
        $data_jadwal    = $this->db->query($sql_datajadwal)->result();
        $data = [
            'table'     => $data_jadwal
        ];


        $this->template->load('template', 'jadwalsiswa/index', $data);
    }
}
