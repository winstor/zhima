<?php

namespace App\Http\Middleware;

use Closure;

class CheckPatentMonitorApi
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
        $sign = $request->sign;
        $timestamp = $request->timestamp;
        if (time() - $timestamp > 500) {
            return response("签名时间过期!");
        }
        $key = 'zhi@ma#';
        if ($sign == md5($timestamp . $key)) {
            return $next($request);
        } else {
            return response("签名错误!");
        }
    }
}
