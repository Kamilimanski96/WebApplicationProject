jQuery(document).ready(function(){
    $("#id_of_your_comment_container").EasyComment({
        path:"/lab/easy-comment/", //Change it to the folder where you put the easycomment files
        moderate:false,
        maxReply:5
    });
    // Your other javascript code if any
});
