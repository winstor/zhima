<?php


namespace App\Services\Members;


use App\Patent;
use App\PatentSell;
use Carbon\Carbon;

class PatentServer
{
    public function import()
    {

    }

    public function addSell(Patent $patent)
    {
        $data = $patent->only(['user_id', 'patent_sn', 'patent_name', 'patent_person', 'apply_date', 'patent_domain_id',
            'patent_type_id', 'patent_case_id', 'patent_cert_id']);
        $data = array_merge($data, [
            'price' => 0,
            'remark' => '',
            'sale_state' => 1,
            'is_cheap' => 0,
            'is_best' => 0,
            'created_at' => Carbon::now()
        ]);
        if (!$patent->sell) {
            $patent->sell()->save(new PatentSell($data));
        } elseif (!$patent->sell->sale_state) {
            $patent->sell()->update($data);
        } else {
            return false;
        }
        return true;
    }
}
