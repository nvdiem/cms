<div class="ibox-content m-b-sm border-bottom">
    <form action="{{ route('user.index') }}" method="GET">
        <div class="row">
            <div class="col-sm-3">
                <div class="form-group">
                    <input type="text"  name="keyword" value="{{ request('keyword') ?: old('keyword') }}" placeholder="Họ tên" class="form-control">
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
                <div class="form-group">
                    <input type="submit"  name="search" value="search"  class="btn btn-info">
                </div>
            </div>

            <div class="col-sm-2 pull-right">
                <div class="btn-group">
                    <a href="{{ route('user.create') }}" class="btn btn-success ">Thêm mới</a>
                </div>
            </div>
        </div>
    </form>
    

</div>