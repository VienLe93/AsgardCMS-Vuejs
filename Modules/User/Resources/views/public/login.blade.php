@extends('layouts.account')

@section('title')
    {{ trans('user::auth.login') }} | @parent
@stop

@section('content')
    <div class="login-logo">
        <a href="{{ url('/') }}">{{ setting('core::site-name') }}</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">{{ trans('user::auth.sign in welcome message') }}</p>
        @include('partials.notifications')

        {!! Form::open(['route' => 'login.post']) !!}
            <div class="form-group has-feedback {{ $errors->has('username') ? ' has-error' : '' }}">
                <input type="text" class="form-control" autofocus
                       name="username" placeholder="{{ trans('user::auth.username') }}" value="{{ old('username')}}">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                {!! $errors->first('username', '<span class="help-block">:message</span>') !!}
            </div>
            <div class="form-group has-feedback {{ $errors->has('password') ? ' has-error' : '' }}">
                <input type="password" class="form-control"
                       name="password" placeholder="{{ trans('user::auth.password') }}" value="{{ old('password')}}">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
            </div>
            <div class="row">
                <!-- <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name="remember_me"> {{ trans('user::auth.remember me') }}
                        </label>
                    </div>
                </div> -->
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-success btn-block btn-flat">
                        {{ trans('user::auth.login') }}
                    </button>
                </div>
            </div>
        </form>
        <br>
        <div class="pull-right">
          <i class="glyphicon glyphicon-lock"></i>&nbsp;
          <a href="{{ route('reset')}}">{{ trans('user::auth.forgot password') }}</a>
        </div>
        <br>
        @if (config('asgard.user.config.allow_user_registration'))
            <a href="{{ route('register')}}" class="text-center">{{ trans('user::auth.register')}}</a>
        @endif
    </div>
@stop
