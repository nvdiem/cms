
@include('backend.widgets.breadcrumb', ['title' => $config['seo']['index']['title']])
<div class="wrapper wrapper-content animated fadeInRight ecommerce">
@include('backend.user.components.fillter')
<div class="row">
<div class="col-lg-12">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>{{ $config['seo']['index']['tableHeading']}} </h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">Config option 1</a>
                    </li>
                    <li><a href="#">Config option 2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">

            <table class="table table-striped">
                <thead>
                <tr>
                    <th><input type="checkbox" value="" id="checkAll" class="input-checkBox"></th>
                    <th>Họ tên</th>
                    <th>Email</th>
                    <th>Trạng Thái</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                    @if(isset($users))
                        @foreach($users as $user)
                        <tr>
                            <td><input type="checkbox" value="{{ $user->id }}" class="input-checkbox checkBoxItem"></td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td><input type="checkbox" class="js-switch status" value="{{ $user->publish }}" data-field="publish" data-model="User" {{ $user->publish == 1 ? 'checked' : '' }} data-modelId="{{ $user->id }}"></td>
                            <td class="text-center">
                                <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success"> <i class="fa fa-edit"></i></a>
                                <a href="{{ route('user.delete', $user->id) }}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    
                        @endforeach
                    @endif
                </tbody>
            </table>
            {{ $users->links('pagination::bootstrap-4') }}
        </div>
    </div>
</div>
</div>
</div>
