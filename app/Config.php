<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Config extends Model
{
    /**
     * 创建或更新配置项
     * @param Collection $collection
     * @param $type
     */
    public static function createOrUpdate(Collection $collection, $type)
    {
        //获取已有配置名称
        $oldNames = self::where('type',$type)->pluck('name');
        //配置项更新
        $createData = $collection->map(function($value,$name)use($type,$oldNames){
            //如果是文件，保存文件，返回地址
            if($value instanceof UploadedFile){
                $value = self::putFile($value,$name);
            }
            if(!$oldNames->has($name)){
                return [
                    'type'=>$type,
                    'name'=>$name,
                    'value'=>$value,
                    'created_at'=>Carbon::now(),
                    'updated_at'=>Carbon::now(),
                ];
            }
            self::where([['type',$type],['name',$name]])->update(['value'=>$value]);
            return null;
        })->filter()->all();
        if($createData){
            DB::table('configs')->insert($createData);
        }
    }

    public static function putFile(UploadedFile $file,$name=null)
    {
        if($name){
            $name.='.png';
            return $file->storeAs('images',$name,'public');
        }
        return $file->store('images','public');
    }

    /**
     * 获取配置项
     * @param null $type
     * @return mixed
     */
    public static function getConfig($type = null)
    {
        if($type){
            return self::where('type',$type)->pluck('value','name');
        }
        return self::pluck('value','name');
    }
}
