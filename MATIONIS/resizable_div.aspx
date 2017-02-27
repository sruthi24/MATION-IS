<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resizable_div.aspx.cs" Inherits="resizable_div" %>
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
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
        
</head>
<body>

    <div>
        <div class="header">
            <h2>MATION INFORMATION SYSTEMS  &#174;</h2>
            <div id="grad4">
            </div>

            <div style="height: 25px; width: 1350px">
                <div style="height: 25px; width: 620px; float: left;">
                    <%--p  style="float:right;height:25px;width:100px ">About</p>--%>
                    <a href="Default.aspx" style="float: right; height: 25px; width: 100px; color: black; font-weight: bold;">About</a>
                </div>
                <div style="float: left; height: 20px; width: 0.5px; background-color: #c0c0c0;">
                </div>

                <div style="height: 25px; width: 620px; float: right">
                    <a href="Contact.aspx" style="text-decoration-color: white; height: 25px; width: 100px; color: black; font-weight: bold">Contact US</a>
                    <%-- <p  style="height:25px;width:100px ">ContactUS</p>--%>
                </div>

            </div>
            <!--close menubar-->


        </div>
       <%--<div id="container2">--%>
        <div id="container2">
            <%--<div class="container">--%>
        <div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog modal-sm">
                <div class="modal-content">

                <div class="modal-header">  
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">New User Registration</h4>
        </div>
                    
        <div class="modal-body">
          <p>Registered Successfully</p>
        </div>
                     <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
</div>
    </div>
  </div>
      



            <div id="treeview" class="treeview">
                <h3 style="margin-left: 20px">Welcome To Our Website</h3>



                <p style="margin-left: 20px; margin-right: 20px">
                    Capital isn't so important in business. Experience isn't so important. You can get both these things. What is important is ideas. If you have ideas, you have the main asset you need, and there isn't any limit to what you can do with your business and your life."
— Harvey Firestone
                </p>
                                            <p style="margin-left: 20px; margin-right: 20px">
                    "We all operate in two contrasting modes, which might be called open and closed. The open mode is more relaxed, more receptive, more exploratory, more democratic, more playful and more humorous. The closed mode is the tighter, more rigid, more hierarchical, more tunnel-visioned. Most people, unfortunately spend most of their time in the closed mode. Not that the closed mode cannot be helpful. If you are leaping a ravine, the moment of takeoff is a bad time for considering alternative strategies. When you charge the enemy machine-gun post, don't waste energy trying to see the funny side of it. Do it in the "closed" mode. But the moment the action is over, try to return to the "open" mode—to open your mind again to all the feedback from our action that enables us to tell whether the action has been successful, or whether further action is need to improve on what we have done. In other words, we must return to the open mode, because in that mode we are the most aware, most receptive, most creative, and therefore at our most intelligent."
                </p>
                <p style="margin-left: 20px; margin-right: 20px">
                    "We all operate in two contrasting modes, which might be called open and closed. The open mode is more relaxed, more receptive, more exploratory, more democratic, more playful and more humorous. The closed mode is the tighter, more rigid, more hierarchical, more tunnel-visioned. Most people, unfortunately spend most of their time in the closed mode. Not that the closed mode cannot be helpful. If you are leaping a ravine, the moment of takeoff is a bad time for considering alternative strategies. When you charge the enemy machine-gun post, don't waste energy trying to see the funny side of it. Do it in the "closed" mode. But the moment the action is over, try to return to the "open" mode—to open your mind again to all the feedback from our action that enables us to tell whether the action has been successful, or whether further action is need to improve on what we have done. In other words, we must return to the open mode, because in that mode we are the most aware, most receptive, most creative, and therefore at our most intelligent."
                </p>



            </div>
            <div id="hee" style="float: left; height: 560px; width: 0.5px; background-color: #c0c0c0;"></div>
            <div id="parentcontent" class="parentcontent">
<div id="ppcnt">
                <div id="contentbar" class="contentbar">
                    <form name="myForm" id="form1" runat="server" method="post">

                        <div>
                            <h3>Register Now </h3>
                        </div>

                        <div class="container3">
                         
                         

                            <asp:TextBox runat="server" ID="tb1"  placeholder=" First Name" class="tb2" /> 
                                <span class="star" id="forFirstname" >&#9733;</span>
                              
                            <asp:TextBox runat="server" ID="tb2" name="LastName" placeholder=" Last Name"  class="tb2" /> <span class="star" id="forLastName" >&#9733;</span>


                            <asp:TextBox runat="server" ID='emtb3' name="E-mail" placeholder=" E-mail Address" class="tb2" /><span class="star" id="forEmail" >&#9733;</span>


                            <asp:TextBox runat="server" TextMode="Password" ID='ptb4' placeholder=" Password" class="tb2"></asp:TextBox> <span class="star" id="forPwd" >&#9733;</span>


                            <asp:TextBox runat="server" ID='cntct' name="Contact" placeholder=" Contact Number" class="tb2" /> <span class="star" id="forContact" >&#9733;</span>


                            <asp:TextBox runat="server" ID='adr1' name="Adress1" placeholder=" Address Line1" class="tb2" /> <span class="star" id="forAddress1" >&#9733;</span>

                            <asp:TextBox runat="server" ID='adr2' name="Adress2" placeholder=" Address Line2" class="tb2" /> <span class="star" id="forAddress2" >&#9733;</span>



                            <asp:TextBox runat="server" ID='cit' name="City" placeholder=" City" class="tb2" /> <span class="star"  id="forCity">&#9733;</span>


                            <asp:TextBox runat="server" ID='stat' name="State" placeholder=" State" class="tb2" /> <span class="star" id="forState" >&#9733;</span>
     <asp:TextBox runat="server" ID='cntry' name="Country" placeholder=" Country" class="tb2"  /> <span class="star" id="forCountry" >&#9733;</span>

                            <asp:TextBox runat="server" ID='zipco' name=" Zip Code" placeholder=" Zip Code" class="tb2" /> <span class="star" id="forZipCode" >&#9733;</span>
                         <br />
                             <asp:Button runat="server" Enabled="true" ID="Btnc" data-toggle="modal" data-target="#myModal" OnClick="btn_Register" Text="Register"></asp:Button>
                             <asp:Button runat="server" Enabled="true" ID="clr"  Text="Clear" OnClick="btn_Clear"></asp:Button>
                             <asp:Button runat="server" Enabled="true" ID="Button1"  Text="vanish" OnClick="btn_Clear"></asp:Button>
                             <div class="errors" runat="server" id="error4" style="color: red">  </div>

</div>

                           
         
      </form>
    </div>  
                     
                        
                </div>
                <div id="heyya" >

                </div>
                       </div> 
                        <%--</div>--%>               

        </div>
        

   
    
    
   
</body>
         <script type="text/javascript">


             $(document).ready(function () {
                 $("#Button1").click(function () {
                     document.getElementById("ppcnt").setAttribute("style", "width:0px;height:0px");
                     document.getElementById("heyya").setAttribute("style", "width:250px;height:500px");
                 });
                
                 $("#Btnc").click(function () {
                     document.getElementById('forFirstname').style.visibility = 'hidden';
                     document.getElementById('forLastName').style.visibility = 'hidden';
                     document.getElementById('forEmail').style.visibility = 'hidden';

                     var filter = /^([Aa-zA])+([Aa-zA])*.([Aa-zA])+([Aa-zA])*[1-9]*\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                     var fname = document.getElementById('tb1');
                     window.console.log("executing register function js" + fname);
                     window.console.log("know the length"+  fname.value.length);
                    
                     var lname = document.getElementById('tb2').value.length;
                     window.console.log("executing register function js" + lname)
                     var email = document.getElementById('emtb3').value.length;
                     var pwd = document.getElementById('ptb4').value.length;
                     var cntct = document.getElementById('cntct').value.length;
                     var addr1 = document.getElementById('adr1').value.length;
                     var addr2 = document.getElementById('adr2').value.length;
                     var city = document.getElementById('cit').value.length;
                     var state = document.getElementById('stat').value.length;
                     var coun = document.getElementById('cntry').value.length;
                     var zip = document.getElementById('zipco').value.length;
                     if (fname.value.length<=0|| fname.value.length > 10) {
                         window.console.log(" entered" + fname);
                         document.getElementById('forFirstname').style.visibility = 'visible';
                         document.getElementById('error4').innerHTML = 'First Name is manadatory .Enter less than 10 chars';
                         return false;
                     }
                     else if ((lname <= 0 || lname > 10)) {
                         window.console.log(" entered lname" + lname);
                         document.getElementById('forLastName').style.visibility = 'visible';
                         document.getElementById('error4').innerHTML = 'Last Name is manadatory Enter less than 10 chars';
                         return false;
                     }
                    
                     else if (!filter.test(email)) {
                         document.getElementById('forEmail').style.visibility = 'visible';
                         document.getElementById('error4').innerHTML = "Please enter a valid email address";
                         email.focus;

                         return false;
                     }

                     else if (pwd < 10) {
                         document.getElementById('forPwd').style.visibility = 'visible';
                         document.getElementById('error4').innerHTML = "Please enter 10 length password";
                         return false;
                     }
                     else if ( cntct< 11) {
                         document.getElementById('forContact').style.visibility = 'visible';
                         document.getElementById('error4').innerHTML = "Please enter a contact number of only 11 digits";
                         return false;
                     }
                    
                     else{
                         document.getElementById('error4').innerHTML = "";
                         popup();
                         window.location.href = "Default.aspx";
                     ////return true;

                     }
                 });
             });
             
                                             
             function popup() {

                 var modal = document.getElementById('myModal');

                 // Get the button that opens the modal
                 var btn = document.getElementById("Btnc");

                 // Get the <span> element that closes the modal
                 var span = document.getElementsByClassName("close")[0];

                 // When the user clicks the button, open the modal 
                 btn.onclick = function () {
                     modal.style.display = "block";
                 }

                 // When the user clicks on <span> (x), close the modal
                 span.onclick = function () {
                     modal.style.display = "none";
                 }

                 // When the user clicks anywhere outside of the modal, close it
                 window.onclick = function (event) {
                     if (event.target == modal) {
                         modal.style.display = "none";
                     }
                 }
             }


                        
</script>

</html>

