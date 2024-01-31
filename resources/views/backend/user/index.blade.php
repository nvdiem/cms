
@include('backend.widgets.breadcrumb', ['title' => $config['seo']['index']['title']])
<div class="wrapper wrapper-content animated fadeInRight ecommerce">
<div class="ibox-content m-b-sm border-bottom">
    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <input type="text" id="product_name" name="product_name" value="" placeholder="Product Name" class="form-control">
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <input type="text" id="price" name="price" value="" placeholder="Price" class="form-control">
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <input type="text" id="quantity" name="quantity" value="" placeholder="Quantity" class="form-control">
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <select name="status" id="status" class="form-control">
                    <option value="1" selected>Enabled</option>
                    <option value="0">Disabled</option>
                </select>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="btn-group">
                <a href="{{ route('user.create') }}" class="btn btn-w-m btn-info form-control">Add new</a>
            </div>
        </div>
    </div>

</div>
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
                    
                </tr>
                </thead>
                <tbody>
                    @if(isset($users))
                        @foreach($users as $user)
                        <tr>
                            <td><input type="checkbox" value="" class="input-checkbox checkBoxItem"></td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td><input type="checkbox" class="js-switch" checked /></td>
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
