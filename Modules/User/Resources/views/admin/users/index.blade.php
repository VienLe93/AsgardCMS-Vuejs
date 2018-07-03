@extends('layouts.master')

@section('content-header')
    <h1>
        {{ trans('user::users.title.users') }}
    </h1>
    <ol class="breadcrumb">
        <li><a href="{{ route('dashboard.index') }}"><i class="fa fa-dashboard"></i> {{ trans('core::core.breadcrumb.home') }}</a></li>
        <li class="active">{{ trans('user::users.title.users') }}</li>
    </ol>
@stop
@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="row">
                <div class="btn-group pull-right" style="margin: 0 15px 15px 0;">
                    <a href="{{ route('admin.user.user.create') }}" class="btn btn-primary btn-flat" style="padding: 4px 10px;">
                        <i class="fa fa-pencil"></i> {{ trans('user::users.button.create user') }}
                    </a>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header">
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="data-table table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>{{ trans('user::users.table.first-name') }}</th>
                                <th>{{ trans('user::users.table.last-name') }}</th>
                                <th>{{ trans('user::users.table.email') }}</th>
                                <th>{{ trans('user::users.table.club') }}</th>
                                <th>{{ trans('user::users.table.ambassador') }}</th>
                                <th>{{ trans('user::users.table.type') }}</th>
                                <th>{{ trans('user::users.table.status') }}</th>
                                <th>{{ trans('core::core.table.created at') }}</th>
                                <th data-sortable="false">{{ trans('core::core.table.actions') }}</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if (isset($users)): ?>
                            <?php foreach ($users as $user): ?>
                            <tr>
                                <td>
                                  <a href="{{ route('admin.user.user.edit', [$user->id]) }}">
                                      {{ $user->first_name }}
                                  </a>
                                </td>
                                <td>
                                  <a href="{{ route('admin.user.user.edit', [$user->id]) }}">
                                      {{ $user->last_name }}
                                  </a>
                                </td>
                                <td>{{ $user->email }}</td>
                                <td>
                                    @if($user->club == true)
                                        <span class="label label-sm label-success">{{ trans('Active') }}</span>
                                    @else
                                        <span class="label label-sm label-info">{{ trans('Disactive') }}</span>
                                    @endif
                                </td>
                                <td>
                                    @if($user->ambassador == true)
                                        <span class="label label-sm label-success">{{ trans('Active') }}</span>
                                    @else
                                        <span class="label label-sm label-info">{{ trans('Disactive') }}</span>
                                    @endif
                                </td>
                                <td>
                                    @if($user->type == 1)
                                        <span class="label label-sm label-warning">{{ trans('PROFESSIONAL') }}</span>
                                    @else
                                        <span class="label label-sm label-danger">{{ trans('USER') }}</span>
                                    @endif
                                </td>
                                <td>
                                    @if($user->status == true)
                                        <span class="label label-sm label-success">{{ trans('Active') }}</span>
                                    @else
                                        <span class="label label-sm label-info">{{ trans('Disactive') }}</span>
                                    @endif
                                </td>
                                <td>{{ $user->created_at }}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{ route('admin.user.user.edit', [$user->id]) }}" class="btn btn-default btn-flat"><i class="fa fa-pencil"></i></a>
                                        <button class="btn btn-danger btn-flat" data-toggle="modal" data-target="#modal-delete-confirmation" data-action-target="{{ route('admin.user.user.destroy', [$user->id]) }}"><i class="fa fa-trash"></i></button>
                                    </div>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                            <?php endif; ?>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>{{ trans('user::users.table.first-name') }}</th>
                                <th>{{ trans('user::users.table.last-name') }}</th>
                                <th>{{ trans('user::users.table.email') }}</th>
                                <th>{{ trans('user::users.table.club') }}</th>
                                <th>{{ trans('user::users.table.ambassador') }}</th>
                                <th>{{ trans('user::users.table.type') }}</th>
                                <th>{{ trans('user::users.table.status') }}</th>
                                <th>{{ trans('core::core.table.created at') }}</th>
                                <th>{{ trans('core::core.table.actions') }}</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('core::partials.delete-modal')
@stop

@section('footer')
    <a data-toggle="modal" data-target="#keyboardShortcutsModal"><i class="fa fa-keyboard-o"></i></a> &nbsp;
@stop
@section('shortcuts')
    <dl class="dl-horizontal">
        <dt><code>c</code></dt>
        <dd>{{ trans('user::users.title.create user') }}</dd>
    </dl>
@stop

@push('js-stack')
    <script type="text/javascript">
        $( document ).ready(function() {
            $(document).keypressAction({
                actions: [
                    { key: 'c', route: "<?= route('admin.user.user.create') ?>" }
                ]
            });
        });
    </script>
    <?php $locale = locale(); ?>
    <script type="text/javascript">
        $(function () {
            $('.data-table').dataTable({
                "paginate": true,
                "lengthChange": true,
                "filter": true,
                "sort": true,
                "info": true,
                "autoWidth": true,
                "order": [[ 0, "desc" ]],
                "language": {
                    "url": '<?php echo Module::asset("core:js/vendor/datatables/{$locale}.json") ?>'
                }
            });
        });
    </script>
@endpush
