@extends('layouts.master')

@section('content-header')
@stop

@section('content')
<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered" id="users">
            <thead>
              <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Created At</th>
                <th>Options</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                  <td>{!! $user->firstname.' '.$user->lastname !!}</td>
                  <td>{!! $user->email !!}</td>
                  <td>{!! $user->created_at !!}</td>
                  <td>
                    <a href="">Edit</a>
                    <a href="">Delete</a>
                  </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@stop

@section('footer')
    <a data-toggle="modal" data-target="#keyboardShortcutsModal"><i class="fa fa-keyboard-o"></i></a> &nbsp;
@stop
@section('shortcuts')
    <dl class="dl-horizontal">
        <dt><code>c</code></dt>
        <dd>{{ trans('user::users.button.new-user') }}</dd>
    </dl>
@stop