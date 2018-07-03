<div class="box-body">
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
