document.addEventListener('turbolinks:load', function(){
    console.log('sup');
    document.addEventListener('ajax:success',function(event) {
        console.log(event);
        var response = event.detail;
        console.log(response);
    })
})