
$(document).ready(function() {

    if (navigator.onLine) {

        $.getJSON("employee_list.json",
           function(json){
               $.each(json, function(index) {
                    console.log(json[index]);
                    $("ul.employeelist").append(createEmployee(json[index]));
               })
               $("ul.employeelist").listview('refresh');
           }
        );
    } else {
        //get data from localStorage
    }

    function createEmployee(employee) {
        return $("<li class=\"employee\"><a href=\"#\">" + employee.name + "</a></li>");
    }


});