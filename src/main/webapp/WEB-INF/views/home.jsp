<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>

<style>
td {
	cursor: pointer;
}

th {
	cursor: default;
}
</style>
</head>
<body>
	<div id='teamlist'>
		<table border="1">
			<tr>
				<th>tId</th>
				<th>tname</th>
				<th>year</th>
			</tr>

			<c:forEach var="teams" items="${teams}" varStatus="status">

				<tr class="team">
					<td>${teams.tid}</td>
					<td>${teams.tname}</td>
					<td>${teams.year}</td>
				</tr>

			</c:forEach>

		</table>

	</div>
	<div id="memlist"></div>
	<div id="meminfo"></div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
 	$(document).ready(function() {

        $(".team").on("click", function() {
          var tr = $(this);
          var td = tr.children();
          var no = td.eq(0).text();
          console.log(no);

          $("#memlist_table").remove();
          $("#meminfo_table").remove();

          $.ajax({
            type: "GET",
            url: "/member_list/" + no,
            dataType: "json"
          })
            .done(function(result) {

              var res = "";

              res += "<table border='1' id='memlist_table'>";
              res += "<thead>";
              res += "<tr>";
              res += "<th>tname</th>";
              res += "<th>mid</th>";
              res += "<th>mname</th>";
              res += "</tr>";
              res += "</thead>";
              res += "<tbody>";

              for (key in result) {

                  res += "<tr class='detail'>";
                  res += "<td>" + result[key].tname + "</td>";
                  res += "<td>" + result[key].mid + "</td>";
                  res += "<td>" + result[key].mname + "</td>";
                  res += "</tr>";

                }

              res += "</tbody>";
              res += "</table>";
              
              $("#memlist").append(res);
            })
            .fail(function() {
              console.log("fail");
            });

        });

        $('body').on("click", ".detail", function() {

        	var tr = $(this);
            var td = tr.children();
            var no = td.eq(1).text();
            console.log(no);
            
          $("#meminfo_table").remove();

          $.ajax({
              type : 'GET',
              url : '/mem_info/' + no,
              dataType : 'json'

          }).done(function(result){

        	  var res = '';
			  res += "<table border='1' id='meminfo_table'>";
			  res += "<thead>";
			  res += "<tr>";
			  res += "<th>mid</th>";
			  res += "<th>mname</th>";
			  res += "<th>position</th>";
			  res += "<th>tall</th>";
			  res += "</tr>";
			  res += "</thead>";
			  res += "<tbody>";
			  res += "<tr>";
			  res += "<td>"+result.mid+"</td>";
			  res += "<td>"+result.mname+"</td>";
			  res += "<td>"+result.position+"</td>";
			  res += "<td>"+result.tall+"</td>";
			  res += "</tr>";
			  res += "</tbody>";
			  res += "</table>";

			  $('#meminfo').append(res);
			  
          }).fail(function(){
				console.log('fail');
          });

         
        });
      });
    </script>

</body>
</html>
