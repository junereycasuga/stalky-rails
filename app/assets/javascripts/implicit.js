$(document).ready(function(){
    if(window.location.hash){
        //Means there is a hash in the url and assume it is the token
        $('#implicitbutton').hide().after("<h3>Token Result</h3><p>As you can see from the URL of this page, we have the token in the form of a hash. This token is extracted as shown below</p><div class='well'>" + window.location.hash.substring(1) + "</div>" + "<p><b>URL : </b>" + '<%= "#{StalkyRails::Application::API_USER_DETAILS_URL}?access_token=" %>' + window.location.hash.substring(1) + "</p>" + "<a href='#' id='startstalking' data-token='" + window.location.hash.substring(1) + "' class='btn btn-danger btn-lg'>Start Stalking</a>"
            );
    }

    $('#startstalking').live("click", function(e){
        var btn = $(this);
        $.ajax({
            'url' : 'localhost:3000/implicit?token=' + btn.data("token") + '&type=details',
            'beforeSend' : function(){
                btn.text("Stalkin... Please wait");
            },
            'success' : function(data){
                parsedData = JSON.parse(data);
                btn.hide();
                btn.after("<h3>User Data</h3><div class='well'>" + data + "</div>");
            }
        });
        e.preventDefault();
    });
})
