@include('backend.widgets.breadcrumb', ['title' => $config['seo']['delete']['title']])

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Bạn chắc chắn muốn xóa? </h5>
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
                    <form method="post" class="form-horizontal"  action="{{ route('user.destroy', $user->id) }}">
                        @csrf
                        @method('DELETE')
                        <div class="form-group"><label class="col-sm-2 control-label">Tên *</label>

                            <div class="col-sm-10"><input readonly ="text" class="form-control" name="name" value="{{ old('name', ($user->name) ?? '') }}"></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Email *</label>
                            <div class="col-sm-10"><input readonly type="text" class="form-control" name="email" value="{{ old('email', ($user->email) ?? '') }}" > 
                            </div>
                        </div>
                        
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-danger" type="submit">Xóa</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>