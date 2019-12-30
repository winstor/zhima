<?php


namespace App\Services;


use App\Services\Gathers\GatherDetail;

class GatherService
{
    public $gatherDetail;
    public function __construct(GatherDetail $gatherDetail)
    {
        $this->gatherDetail = $gatherDetail;
    }

    public function detail()
    {
        return $this->gatherDetail->get();
    }
}