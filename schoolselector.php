<link rel="stylesheet" type="text/css" href="schoolselector.css">
<h1>
		"Name <br> of school"

</h1>


<h2>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>School Selector</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#school" ).autocomplete({
      source: 'search.php'
    });
  });  
  </script>
    
</head>
<body>
<button id="btnSearch" hidden="true" onclick="myFunction()">Click me</button>
<script>
function myFunction() {      
    
    str = document.getElementById("school").value;    
	  
    if (str == "") {
        document.getElementById("district").value = "";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                ar = JSON.parse(xmlhttp.responseText);
                
                document.getElementById("district").value = ar[0];
                document.getElementById("building").value = ar[1];
            }
        };
        xmlhttp.open("GET","getSchoolData.php?school="+str,true);
        xmlhttp.send();
    }
}
      
</script>

<form action="schoolinsert.php" method="$_POST">

<div class="ui-widget">
  <label for="school">School: </label>
  <input id="school" name="school" onkeydown = "if (event.keyCode == 13) document.getElementById('btnSearch').click()">
  <hr>
  <label for="district">District: </label>
  <input id="district" name="district">
  <hr>
  <label for="building">Building: </label>
  <input id="building" name="building">
</div>
</body>

<br>

</h2>


<button type="button" class="button1" id="school, district, building"onclick="window.location.href='plaeadashboard.html'">Home</button> 

<button type="submit" class="button2" onclick= "window.location.href='schoolinsert.php'">Next</button>
</from>
</html>