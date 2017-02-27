<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../style.css" rel="stylesheet" />
       <link href="../style.css" rel="stylesheet" />
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  
	
	   
    
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
 <a href="Contact.aspx" style="text-decoration-color:white;height:25px;width:100px; color:black ;font-weight:bold ">Contact US</a>
                            <%-- <p  style="height:25px;width:100px ">ContactUS</p>--%>
                        </div>
                       
                    </div><!--close menubar-->
                
                
                    </div>
        <div id="container2" >

            <div id="treeview" class="treeview"  >
			<h3 style="margin-left:20px">Welcome To Our Website</h3>
           
                
                
                  <p style="margin-left:20px; margin-right:20px">
                              Capital isn't so important in business. Experience isn't so important. You can get both these things. What is important is ideas. If you have ideas, you have the main asset you need, and there isn't any limit to what you can do with your business and your life."
— Harvey Firestone
                          </p>
                <p style="margin-left:20px; margin-right:20px">
                    "We all operate in two contrasting modes, which might be called open and closed. The open mode is more relaxed, more receptive, more exploratory, more democratic, more playful and more humorous. The closed mode is the tighter, more rigid, more hierarchical, more tunnel-visioned. Most people, unfortunately spend most of their time in the closed mode. Not that the closed mode cannot be helpful. If you are leaping a ravine, the moment of takeoff is a bad time for considering alternative strategies. When you charge the enemy machine-gun post, don't waste energy trying to see the funny side of it. Do it in the "closed" mode. But the moment the action is over, try to return to the "open" mode—to open your mind again to all the feedback from our action that enables us to tell whether the action has been successful, or whether further action is need to improve on what we have done. In other words, we must return to the open mode, because in that mode we are the most aware, most receptive, most creative, and therefore at our most intelligent."
                </p>
                 <p style="margin-left:20px; margin-right:20px">
                    "We all operate in two contrasting modes, which might be called open and closed. The open mode is more relaxed, more receptive, more exploratory, more democratic, more playful and more humorous. The closed mode is the tighter, more rigid, more hierarchical, more tunnel-visioned. Most people, unfortunately spend most of their time in the closed mode. Not that the closed mode cannot be helpful. If you are leaping a ravine, the moment of takeoff is a bad time for considering alternative strategies. When you charge the enemy machine-gun post, don't waste energy trying to see the funny side of it. Do it in the "closed" mode. But the moment the action is over, try to return to the "open" mode—to open your mind again to all the feedback from our action that enables us to tell whether the action has been successful, or whether further action is need to improve on what we have done. In other words, we must return to the open mode, because in that mode we are the most aware, most receptive, most creative, and therefore at our most intelligent."
                </p>
                
                
                
			</div>
             <div id="hee" style="float:left;height:560px;width:0.5px; background-color: #c0c0c0;"></div>  
            <div id="parentcontent" class="parentcontent" >
            
                <div id="contentbar" class="contentbar" >
				<form   name="myForm" id="form1"  runat="server"  method="post">
                   
                <div> <h3> Sign in </h3>    Forgot Password<a  id="myAnchor" href="#" onclick=" return yesnoCheck()">&#10068;</a></div>
                    <br />
                <div class="container">


                   
                    <asp:TextBox  runat="server"  id='txtEmail'  name="txtEmail" placeholder="Email Address" class="tb2" />
                    <br />
                     <div class ="errors" id="error1" style="color:red"></div>
                    <br />
                    

                    <asp:TextBox  runat="server" TextMode="Password" id='pwd'  placeholder="MATION password" class="tb2"/> <div class ="errors" id="error2" style="color:red"></div>
                    <asp:Button runat="server" Enabled="true"   id="ht" OnClientClick="sendEmail()" Text="Submit" ></asp:Button> <div class ="errors" id="error4" style="color:red">
                   
                    <br />
                 <div>
<div style="float:left"><asp:CheckBox runat="server" id="cb" onchange="document.getElementById('pwd').type = this.checked ? 'text' : 'password'"/>

</div> 
                     <div > <p style="color:black;margin-top:-1px"> Show password</p></div> 
                 </div>  
                        <%-- <<%--div id="frg"> <a  id="myAnchor" href="#" onclick=" return yesnoCheck()" >  Forgot Password&#10068;</a></div>--%>
                   <br/>
                    <br />
                   <!-- <input  id="ip" type="submit" value="Submit" style="margin-left:40px" />-->
                    <asp:Button ID="btnSave" Text="Submit" runat="server" onClientClick =" return sendEmail()"  style="color:black"  />

                    <asp:Button ID="Btn" Text="Register" runat="server"  OnClick="btnSave_Click" style="color:black"  />
<%--"--%>

                </div>
                    <div class ="errors" id="error3" style="color:red">
      </div>
                    </div>
                   
            </form>
				</div>
              
        </div>
         
              
    </div>
  </div>
</body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="Scripts/MyScript.js"></script>
	   <script type="text/javascript">
	    </script>
</html>
