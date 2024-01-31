$(document).ready(function(){

    console.log('common.js');
    switchery();
});

switchery = function(){
    $('.js-switch').each(function(){
        var switchery = new Switchery(this, { color: '#1AB394' });
    });
}
