
$(document).ready(function() {

    if (navigator.onLine) {

        $.getJSON("project_list.json",
           function(json){
               $.each(json, function(index) {
                    console.log(json[index]);
                    $("ul.projectlist").append(createProject(json[index]));
               })
               $("ul.projectlist").listview('refresh');
           }
        );
    } else {
        //get data from localStorage
    }

    function createProject(project) {
        return $("<li class=\"project\"><a href=\"#\">" + project.name + "</a></li>");
    }


});