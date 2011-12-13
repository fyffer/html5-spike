
$("body").live('pageinit',function(event){

    if ($("ul.employeelist").length > 0) {

        if (navigator.onLine) {
            $("ul.employeelist").html("");
            $.getJSON("employee_list.json",  {cache: false},
               function(json){
                   localStorage.setItem("employees", JSON.stringify(json));

                   $.each(json, function(index) {
                        console.log(json[index]);
                        $("ul.employeelist").append(createEmployee(json[index]));
                   });
                   $("ul.employeelist").listview('refresh');
               }
            );
        } else {
            //get data from localStorage
            $("ul.employeelist").html("");
            var json = JSON.parse(localStorage.getItem("employees"));
            console.log(typeof json);
            $.each(json, function(index) {
                console.log(json[index]);
                $("ul.employeelist").append(createEmployee(json[index]));
            });
            $("ul.employeelist").listview('refresh');
        }

        function createEmployee(employee) {
            return $("<li class=\"employee\"><a href=\"#\">" + employee.name + "</a></li>");
        }
    }

});