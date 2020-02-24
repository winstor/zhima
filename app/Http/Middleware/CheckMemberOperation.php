<?php

namespace App\Http\Middleware;

use App\MemberUser;
use App\Patent;
use App\Repositories\Eloquent\Repository;
use Closure;
use Illuminate\Contracts\Auth\Access\Gate;

class CheckMemberOperation
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $actionMethod = $request->route()->getActionMethod();
        $id = current($request->route()->parameters());
        if($id == null){
            return $next($request);
        }
        $repository = $request->route()->controller->repository??'';
        //是否
        if($repository  instanceof Repository){
            if(is_numeric($id)){
                $arguments = $repository->find($id);
            }elseif($actionMethod == 'destroy'){
                $arguments = $repository->find(explode(',',$id));
                foreach($arguments as $argument){
                    if(!$repository->can($actionMethod,$argument)){
                        $response = [
                            'status'  => false,
                            'message' => '请选择可删除部分',
                        ];
                        return response()->json($response);
                    }
                }
                return $next($request);
            }else{
                $arguments = $repository->model();
            }
            if(!$repository->can($actionMethod,$arguments)){
                abort(404);
            }
        }else{
            abort(404);
        }
        //exit;
        return $next($request);
    }
}
