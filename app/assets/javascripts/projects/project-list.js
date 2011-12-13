
$(document).ready(function() {

    $.getJSON("project_list.json",
       function(json){
         console.log(json[0].name);
       }
 );


});