<link rel="stylesheet" type="text/css" href="description.css">

<h1>
"Name <br> of school"
</h1>

<p>In which of the following areas <br> did you provide PD/coaching:</p>
<form action="descriptioninsert.php" method="$_POST">
<select name="Area Select">
  <option selected="true" style="display:none;">Select Area or Choose Other</option>
  <option  name='south'value="South">South</option>
  <option name='east' value="East">East</option>
  <option  name='west' value="West">West</option>
  <option  name='nopref' value="No Preference">Other</option>
</select>

<br><br>

<textarea rows="3" name='text' class="other" id="other" placeholder="Explain if Other"></textarea>

<h2>How did/will you measure results:</h2>

<form>
  <input type="checkbox" name="in" value="survey"> In-Class Survey<br>
  <input type="checkbox" name="out" value="survey"> Online Survey<br>
   <input type="checkbox" name="collected" value="Data collected by district/building"> Data collected by district/building <br>
  <input type="checkbox" name="Follow-Up" value="Follow-Up" > Follow up (in person, zoom, email)<br>
  <input type="checkbox" name="Class" value="Class"> Class Observation<br>
 

<br><br>
<button type="submit" class="button2" onclick="window.location.href='descriptioninsert.php'">Next</button>
</form>


