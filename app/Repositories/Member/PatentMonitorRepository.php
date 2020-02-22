<?php


namespace App\Repositories\Member;


use App\Repositories\Eloquent\Repository;

class PatentMonitorRepository extends Repository
{
    function model()
    {
        return 'App\Patent';
    }
    public function all($columns = array('*')) {
        return $this->model->where('monitor_state','>',0)->get($columns);
    }

    /**
     * @param int $perPage
     * @param array $columns
     * @return mixed
     */
    public function paginate($perPage = 15, $columns = array('*')) {
        return $this->model->where('monitor_state','>',0)->paginate($perPage, $columns);
    }

    /**
     * @param array $data
     * @param $id
     * @param string $attribute
     * @return mixed
     */
    public function update(array $data, $id, $attribute="id") {
        return $this->model->where('monitor_state','>',0)->where($attribute, '=', $id)->update($data);
    }

    /**
     * @param $id
     * @return mixed
     */
    public function delete($id) {
        return $this->model->where('monitor_state','>',0)->destroy($id);
    }

    /**
     * @param $id
     * @param array $columns
     * @return mixed
     */
    public function find($id, $columns = array('*')) {
        return $this->model->where('monitor_state','>',0)->find($id, $columns);
    }

    /**
     * @param $attribute
     * @param $value
     * @param array $columns
     * @return mixed
     */
    public function findBy($attribute, $value, $columns = array('*')) {
        return $this->model->where('monitor_state','>',0)->where($attribute, '=', $value)->first($columns);
    }
}
