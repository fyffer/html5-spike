
$("body").live('pageinit',function(event) {

    if ($("ul.projectlist").length > 0) {

        console.log("run project javascript");

        if (navigator.onLine) {

            $.getJSON("project_list.json",  {cache: false},
               function(json){
                   localStorage.setItem("projects", JSON.stringify(json));
                   $.each(json, function(index) {
                        console.log(json[index]);
                        $("ul.projectlist").append(createProject(json[index]));
                   })
                   $("ul.projectlist").listview('refresh');
               }
            );
        } else {
            //get data from localStorage
            console.log("offline, get data from local storage");
            //get data from localStorage
            var json = JSON.parse(localStorage.getItem("employees"));
            console.log(typeof json);
            $.each(json, function(index) {
                console.log(json[index]);
                $("ul.projectlist").append(createEmployee(json[index]));
            });
            $("ul.projectlist").listview('refresh');
        }

        function createProject(project) {
            return $("<li class=\"project\"><a href=\"#\">" + project.name + "</a></li>");
        }
    } else {
        console.log("fail ");
    }

});
