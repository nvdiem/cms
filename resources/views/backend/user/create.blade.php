@include('backend.widgets.breadcrumb', ['title' => $config['seo']['create']['title']])

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>All form elements </h5>
                </div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <div class="ibox-content">
                    <form method="post" class="form-horizontal"  action="{{ route('user.store') }}">
                        @csrf
                        <div class="form-group"><label class="col-sm-2 control-label">Tên *</label>

                            <div class="col-sm-10"><input type="text" class="form-control" name="name" value="{{ old('name')}}"></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Email *</label>
                            <div class="col-sm-10"><input type="text" class="form-control" name="email" value="{{ old('email')}}" > 
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Mật khẩu *</label>

                            <div class="col-sm-10"><input type="password" class="form-control" name="password" value="{{ old('password')}}"></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Nhập lại mật khẩu *</label>

                            <div class="col-sm-10"><input type="password" class="form-control" name="re_password" ></div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-white" type="submit">Cancel</button>
                                <button class="btn btn-primary" type="submit">Save changes</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>