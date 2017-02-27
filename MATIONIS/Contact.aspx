<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../style.css" rel="stylesheet" />
       <link href="../style.css" rel="stylesheet" />
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
	<script src="Scripts/MyScript.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXPfeUQbf-np8FZ1XdvZ-ZvljcIrlcffU&callback=initMap" async defer></script>
	   <script type="text/javascript">
	       function checkOnlyEmailRecovery() {
	           window.console.log("In check email recovery")
	           var email = document.getElementById('txtEmail');
	           var filter = /^([Aa-zA])+([Aa-zA])*.([Aa-zA])+([Aa-zA])*[1-9]*\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	           if (!filter.test(email.value)) {
	               window.console.log("In check email recovery after filter")
	               document.getElementById('error1').innerHTML = "*Please enter a valid email address*";
	               email.focus;
	               return false;
	           }
	       }

	       function checkEmail() {


	           window.console.log("in check e-mail function");
	           document.getElementById("myAnchor").addEventListener("click", function (event) {
	               event.preventDefault()
	           });

	           var email = document.getElementById('txtEmail');
	           var password = document.getElementById('pwd');

	           if (password.style.visibility == 'hidden') {
	               window.console.log("I am trying to return false");
	               return false;

	           }
	           /*var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;*/
	           var filter = /^([Aa-zA])+([Aa-zA])*.([Aa-zA])+([Aa-zA])*[1-9]*\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	           if (!filter.test(email.value)) {
	               document.getElementById('errors').innerHTML = "*Please enter a valid email address*";
	               email.focus;
	               return false;
	           }
	               //else if (password.style.visibility == 'hidden') {
	               //    //sendEmail();
	               //    document.getElementById('errors').innerHTML = "email sent successfully";
	               //    password.style.visibility = 'visible';
	               //    email.value = "";
	               //    document.getElementById('errors').innerHTML = "";
	               //    return false;
	               //}
	           else if (email.value.length >= 30) {
	               document.getElementById('errors').innerHTML = "email length cannot be greater than 30";

	               return false;
	           }
	           else if (pwd.value.length < 8 || pwd.value.length > 10) {
	               document.getElementById('errors').innerHTML = "Enter Password.password should be 8 to 10characters";


	               return false;
	           }
	           //else {

	           //    this.history.forward(-1);

	           //    return false;
	       }

	       function yesnoCheck() {
	           window.console.log("Entering yes no function");
	           var ele = document.getElementById('myAnchor').value;
	           document.getElementById("ht").style.visibility = 'visible';
	           var hey = document.getElementById('txtEmail').value;
	           window.console.log("file hidden successfully");

	           window.console.log("after ele click");
	           if (hey.length == 0 || hey.length > 0) {
	               window.console.log(hey.length);

	               document.getElementById("ht").disabled = false;
	               document.getElementById('ht').style.visibility = 'visible';
	               window.console.log("looks like it should be visible now");
	               document.getElementById('pwd').style.visibility = 'hidden';
	               document.getElementById('cb').style.visibility = 'hidden';
	               document.getElementById('btnSave').style.visibility = 'hidden';
	               btnSave
	               window.console.log("file hidden successfully");
	           }

	           if (document.getElementById('txtEmail').value.length == 0) {


	               document.getElementById('error1').innerHTML = "Enter e-mail address for password recovery ";


	           }

	       }  //document.getElementById('pwd').style.visibility = 'hidden';


	       function sendEmail() {
	           var ele = document.getElementById('btnSave');
	           if (checkOnlyEmailRecovery() == false) {
	               checkOnlyEmailRecovery();
	           }

	           else {
	               if (document.getElementById('pwd').style.visibility == 'hidden') {


	                   window.console.log("In if email ");

	                   //document.getElementById('errors').innerHTML = "";
	                   sendNow();

	               }
	           }
	       }
	       function sendNow() {
	           var ele = document.getElementById('txtEmail').value;
	           //   var link = 'mailto:' + ele + '?subject=Message from'
	           //+ document.getElementById('txtEmail').value
	           //+ '&body=' + document.getElementById('txtEmail').value;
	           //   window.location.href = link;
	           document.getElementById('error1').innerHTML = "";
	           document.getElementById('error4').innerHTML = "email sent sucessfully";

	           setTimeout(function () {
	               window.location.href = "Default.aspx"; //will redirect to your blog page (an ex: blog.html)
	           }, 1000); //will call the function after 2 secs.


	       }
	       var map;
	       function initMap() {
	           var Seattle = { lat: 47.6062, lng: 122.3321 };
	           var map = new google.maps.Map(document.getElementById('map'), {
	               zoom: 4,
	               center: Seattle
	           });
	           var marker = new google.maps.Marker({
	               position: Seattle,
	               map: map
	           });
	           var infoWindow = new google.maps.InfoWindow({map: map});

	           // Try HTML5 geolocation.
	           if (navigator.geolocation) {
	               navigator.geolocation.getCurrentPosition(function(position) {
	                   var pos = {
	                       lat: position.coords.latitude,
	                       lng: position.coords.longitude
	                   };

	                   infoWindow.setPosition(pos);
	                   infoWindow.setContent('Location found.');
	                   map.setCenter(pos);
	               }, function() {
	                   handleLocationError(true, infoWindow, map.getCenter());
	               });
	           } else {
	               // Browser doesn't support Geolocation
	               handleLocationError(false, infoWindow, map.getCenter());
	           }
           }

           function handleLocationError(browserHasGeolocation, infoWindow, pos) {
               infoWindow.setPosition(pos);
               infoWindow.setContent(browserHasGeolocation ?
                                     'Error: The Geolocation service failed.' :
                                     'Error: Your browser doesn\'t support geolocation.');
           }
	       
	   </script>
	   
    
</head>
<body>
    
    <div>
         <div class="header">
                        <h2 >MATION INFORMATION SYSTEMS  &#174;</h2>
             <div id="grad4">
                 </div>
                 
                    <div style="height:25px;width:1350px">
                        <div  style="height:25px;width:620px;float:left;">
<%--p  style="float:right;height:25px;width:100px ">About</p>--%>
<a href="Default.aspx" style="float:right;height:25px;width:100px ;color:black;font-weight:bold; ">About</a>
                        </div>
                         <div style="float:left;height:20px;width:0.5px;
    background-color: #c0c0c0;"> </div>
                         
                         <div   style="height:25px;width:620px;float:right ">
 <a href="Default.aspx" style="text-decoration-color:white;height:25px;width:100px; color:black ;font-weight:bold ">Contact US</a>
                            <%-- <p  style="height:25px;width:100px ">ContactUS</p>--%>
                        </div>
                       
                    </div><!--close menubar-->
                
                
                    </div>
        <div id="container2" >

            <div id="treeview" class="treeview"  >
			<div id ="neww" >
                 <h3>Address</h3>
                        <p>Phone: +1-832-985-1935</p>
                        <p>Adress: 1908,Helios Avenue,Downtown Seattle</p>
                        <p>Email: <a href="www.google.com">sruthi.grace@gmail.com</a></p>
</div>
              
               <div id="map"></div>
                
			</div>
              <div id="hee" style="float:left;height:560px;width:0.5px; background-color: #c0c0c0;"></div>  
            <div id="parentcontent" class="parentcontent" >
            
               <div id="contentbar" class="contentbar" >
				<form   name="myForm" id="form1" action="New.aspx" runat="server" onsubmit="return checkEmail()" method="post">
                   
                <div> <h3> Sign in </h3>    Forgot Password<a  id="myAnchor" href="#" onclick=" return yesnoCheck()">&#10068;</a></div>
                    <br />
                <div class="container">


                   
                    <input type='text' id='txtEmail'  name="txtEmail" placeholder="Email Address" class="tb2" />
                    <br />
                     <div class ="errors" id="error1" style="color:red"></div>
                    <br />
                    

                    <input type='password' id='pwd'  placeholder="MATION password" class="tb2"/> <div class ="errors" id="error2" style="color:red"></div>
                    <button type="button" disabled="disabled"   id="ht" onclick="sendEmail()"  >Submit</button> <div class ="errors" id="error4" style="color:red">
                   
                    <br />
                 <div>
<div style="float:left"><input type="checkbox" id="cb" onchange="document.getElementById('pwd').type = this.checked ? 'text' : 'password'"/>

</div> 
                     <div > <p style="color:black;margin-top:-1px"> Show password</p></div> 
                 </div>  
                        <%-- <<%--div id="frg"> <a  id="myAnchor" href="#" onclick=" return yesnoCheck()" >  Forgot Password&#10068;</a></div>--%>
                   <br/>
                    <br />
                   <!-- <input  id="ip" type="submit" value="Submit" style="margin-left:40px" />-->
                    <asp:Button ID="btnSave" Text="Submit" runat="server" OnClientClick ="sendEmail()"  style="color:black"  />
</div>

                </div>
                     <div class ="errors" id="error3" style="color:red">
      </div>
            </form>
				</div>
                    
              
        </div>
          
             
    </div>
  </div>
</body>
</html>
