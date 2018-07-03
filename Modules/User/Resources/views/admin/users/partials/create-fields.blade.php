<div class="box-body">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6">
            <div class="box box-primary" style="border-left: 1px solid rgba(0, 0, 0, 0.1); border-right: 1px solid rgba(0, 0, 0, 0.1);">
                <div class="box-header"></div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="first_name">{{ trans('first_name') }}</label>
                                <input class="form-control" type="text" name="first_name" value="" placeholder="{{ trans('first_name') }}">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="last_name">{{ trans('last_name') }}</label>
                                <input class="form-control" type="text" name="first_name" value="" placeholder="{{ trans('last_name') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="email">{{ trans('email') }}</label>
                                <input class="form-control" type="text" name="email" value="" placeholder="{{ trans('email') }}">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="password">{{ trans('password') }}</label>
                                <input class="form-control" type="password" name="password" value="" placeholder="{{ trans('password') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="phone">{{ trans('phone') }}</label>
                                <input class="form-control" type="text" name="phone" value="" placeholder="{{ trans('phone') }}">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="type">{{ trans('type') }}</label>
                                <select name="type" class="form-control">
                                  <option value="1">{{ trans('Professional') }}</option>
                                  <option value="2">{{ trans('User') }}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="civility">{{ trans('civility') }}</label>
                                <select name="civility" class="form-control">
                                  <option value="1">{{ trans('English') }}</option>
                                  <option value="2">{{ trans('France') }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="post_code">{{ trans('post_code') }}</label>
                                <input class="form-control" type="text" name="post_code" value="" placeholder="{{ trans('post_code') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="address">{{ trans('address') }}</label>
                                <input class="form-control" type="text" name="address" value="" placeholder="{{ trans('address') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <div class="form-group">
                                <label for="avatar">{{ trans('avatar') }}</label>
                                <input type="file" name="avatar" value="" placeholder="{{ trans('avatar') }}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="checkbox">
                                <label><input name="club" type="checkbox"> {{ trans('club') }}</label>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <div class="checkbox">
                                <label><input name="ambassador" type="checkbox"> {{ trans('ambassador') }}</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <div class="box box-warning" style="border-left: 1px solid rgba(0, 0, 0, 0.1); border-right: 1px solid rgba(0, 0, 0, 0.1);">
                <div class="box-header"></div>
                <div class="box-body">
                    
                </div>
            </div>
        </div>
    </div>
</div>