<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Nilaisiswa extends CI_Controller
{

    public function index()
    {
        $query = $this->db
            ->join('tbl_jadwal', 'tbl_jadwal.kd_mapel = tbl_mapel.kd_mapel')
            ->join('tbl_nilai', 'tbl_nilai.id_jadwal = tbl_jadwal.id_jadwal')
            ->join('tbl_guru', 'tbl_guru.id_guru = tbl_jadwal.id_guru')
            ->join('tbl_kelas', 'tbl_kelas.kd_kelas = tbl_jadwal.kd_kelas')
            ->where('tbl_nilai.nim =', $this->session->userdata('nim'))
            ->group_by('tbl_mapel.nama_mapel')
            ->get('tbl_mapel')->result();

        $data = [
            'table'     => $query,
        ];
        $this->template->load('template', 'nilaisiswa/index', $data);
    }
}
