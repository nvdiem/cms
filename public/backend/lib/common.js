$(document).ready(function(){
    var _token = $('meta[name="csrf-token"]').attr('content');

    console.log('common.js');
    switchery();
    changeStatus(_token);
    checkAll();
});

switchery = function(){
    $('.js-switch').each(function(){
        var switchery = new Switchery(this, { color: '#1AB394' });
    });
}

changeStatus = function(_token){ 
    $('.status').on('change', function(e){
        let _this = $(this);
        let data = {    
            'value': _this.val(),
            'modelId': _this.attr('data-modelId'),
            'model': _this.attr('data-model'),
            'field': _this.attr('data-field'),
            '_token': _token
        }

        $.ajax({  
            url: '/ajax/dashboard/changeStatus',  
            type: 'POST',  
            data: data,  
            success: function(res) {  
                console.log(res);
            },
            error: function(err){
                console.log(err);
            }
        });  
        console.log(data);
        e.preventDefault();
    })
}

checkAll = function(){
    $('#checkAll').on('click', function(){
        if($(this).is(':checked')){
            $('.checkBoxItem').prop('checked', true);
        }else{
            $('.checkBoxItem').prop('checked', false);
        }
    })
}