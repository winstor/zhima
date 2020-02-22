<?php

namespace App\Http\Middleware;

use App\MemberUser;
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

        $id = current($request->route()->parameters());
        if($id == null){
            return $next($request);
        }
        $repository = $request->route()->controller->repository??'';
        //是否
        if($repository  instanceof Repository){
            if(is_numeric($id)){
                $arguments = $repository->find($id);
            }else{
                $arguments = $repository->model();
            }
            if(!$repository->can($request->route()->getActionMethod(),$arguments)){
                abort(404);
            }
        }else{
            abort(404);
        }
        //exit;
        return $next($request);
    }
}
