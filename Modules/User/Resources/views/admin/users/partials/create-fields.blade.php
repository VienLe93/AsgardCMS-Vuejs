<div class="panel with-nav-tabs panel-default">
    <div class="panel-heading">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#tab_data" data-toggle="tab">{{ trans('users.tabs.data') }}</a>
            </li>
            <li>
                <a href="#tab_role" data-toggle="tab">{{ trans('users.tabs.role') }}</a>
            </li>
            <li>
                <a href="#tab_permission" data-toggle="tab">{{ trans('users.tabs.permission') }}</a>
            </li>
        </ul>
    </div>
    <div class="panel-body">
        <div class="tab-content">
            <div class="tab-pane fade in active" id="tab_data">
                <div class="box-body">
                    <div class='form-group{{ $errors->has("{$lang}.name") ? ' has-error' : '' }}'>
                        {!! Form::label("{$lang}[name]", trans('user::users.name')) !!}
                        {!! Form::text("{$lang}[name]", old("{$lang}.name"), ['class' => 'form-control', 'data-slug' => 'source', 'placeholder' => trans('user::users.name')]) !!}
                        {!! $errors->first("{$lang}.name", '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class='form-group{{ $errors->has("{$lang}.email") ? ' has-error' : '' }}'>
                        {!! Form::label("{$lang}[email]", trans('user::users.email')) !!}
                        {!! Form::number("{$lang}[email]", old("{$lang}.email"), ['class' => 'form-control', 'data-slug' => 'source', 'placeholder' => trans('user::users.email')]) !!}
                        {!! $errors->first("{$lang}.email", '<span class="help-block">:message</span>') !!}
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="tab_role">
                <div class="box-body">
                    <div class='form-group{{ $errors->has("{$lang}.name") ? ' has-error' : '' }}'>
                        {!! Form::label("{$lang}[name]", trans('user::users.name')) !!}
                        {!! Form::text("{$lang}[name]", old("{$lang}.name"), ['class' => 'form-control', 'data-slug' => 'source', 'placeholder' => trans('user::users.name')]) !!}
                        {!! $errors->first("{$lang}.name", '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class='form-group{{ $errors->has("{$lang}.email") ? ' has-error' : '' }}'>
                        {!! Form::label("{$lang}[email]", trans('user::users.email')) !!}
                        {!! Form::number("{$lang}[email]", old("{$lang}.email"), ['class' => 'form-control', 'data-slug' => 'source', 'placeholder' => trans('user::users.email')]) !!}
                        {!! $errors->first("{$lang}.email", '<span class="help-block">:message</span>') !!}
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="tab_permission">
                <div class="box-body">
                    <div class='form-group{{ $errors->has("{$lang}.name") ? ' has-error' : '' }}'>
                        {!! Form::label("{$lang}[name]", trans('user::users.name')) !!}
                        {!! Form::text("{$lang}[name]", old("{$lang}.name"), ['class' => 'form-control', 'data-slug' => 'source', 'placeholder' => trans('user::users.name')]) !!}
                        {!! $errors->first("{$lang}.name", '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class='form-group{{ $errors->has("{$lang}.email") ? ' has-error' : '' }}'>
                        {!! Form::label("{$lang}[email]", trans('user::users.email')) !!}
                        {!! Form::number("{$lang}[email]", old("{$lang}.email"), ['class' => 'form-control', 'data-slug' => 'source', 'placeholder' => trans('user::users.email')]) !!}
                        {!! $errors->first("{$lang}.email", '<span class="help-block">:message</span>') !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>