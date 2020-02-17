<?php

namespace App;

use Encore\Admin\Auth\Database\HasPermissions;
use Encore\Admin\Traits\AdminBuilder;
use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\Storage;

class MemberUser extends Model implements AuthenticatableContract
{
    use Authenticatable, AdminBuilder, HasPermissions;

    protected $fillable = ['username', 'password', 'name', 'avatar'];

    /**
     * Create a new Eloquent model instance.
     *
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        $connection = config('admin.database.connection') ?: config('database.default');

        $this->setConnection($connection);

        $this->setTable('member_users');

        parent::__construct($attributes);
    }

    /**
     * Get avatar attribute.
     *
     * @param string $avatar
     *
     * @return string
     */
    public function getAvatarAttribute($avatar)
    {
        if (url()->isValidUrl($avatar)) {
            return $avatar;
        }

        $disk = config('admin.upload.disk');

        if ($avatar && array_key_exists($disk, config('filesystems.disks'))) {
            return Storage::disk(config('admin.upload.disk'))->url($avatar);
        }

        $default = config('admin.default_avatar') ?: '/vendor/laravel-admin/AdminLTE/dist/img/user2-160x160.jpg';

        return admin_asset($default);
    }

    /**
     * A user has and belongs to many roles.
     *
     * @return BelongsToMany
     */
    public function roles(): BelongsToMany
    {
        $relatedModel = config('admin.database.roles_model');
        return $this->belongsToMany($relatedModel, 'member_role_users', 'user_id', 'role_id');
    }

    /**
     * A User has and belongs to many permissions.
     *
     * @return BelongsToMany
     */
    public function permissions(): BelongsToMany
    {
        $relatedModel = config('admin.database.permissions_model');

        return $this->belongsToMany($relatedModel, 'member_user_permissions', 'user_id', 'permission_id');
    }

    //监控
    public function monitors()
    {
        return $this->hasMany(PatentMonitor::class, 'user_id');
    }

    public static function user()
    {
        return \Encore\Admin\Facades\Admin::user();
    }

    public function real()
    {
        return $this->hasOne(MemberReal::class, 'user_id');
    }

    public function applyReal(MemberReal $memberReal)
    {
        $memberReal->real_state = 0;
        $this->real_state = 3;
        $this->real_type = $memberReal->real_type;
        $this->real()->save($memberReal);
        $this->save();
    }
}
