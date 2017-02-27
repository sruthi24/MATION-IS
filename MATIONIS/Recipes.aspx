<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>
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
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <script src="../Scripts/MyScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      
    <div>
        <div class="header">
                        <h2 >MATION INFORMATION SYSTEMS  &#174;</h2>
                    </div>
        <div  id="container" >

            <div id="textareacontainer" >
                
               

                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"  ></asp:TreeView>

                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

            </div>
           
            <div id="iframecontainer">
            <div class="menubar" >
             <asp:Menu id="Navt"  
        staticdisplaylevels="2" DynamicHorizontalOffset="1"
        staticsubmenuindent="1px" MaximumDynamicDisplayLevels="4"
        orientation="Horizontal" runat="server" DataSourceID="SiteMapDataSource1"> 
</asp:Menu>
            </div>
                <div class="contentbar2" >
                    <br />

 <p><b> Modern recipes and cooking advice </b></p>

<p>From Modern Cookery for Private Families by Eliza Acton (London: Longmans, Green, Reader, and Dyer, 1871. p.48.)
With the advent of the printing press in the 16th and 17th centuries, numerous books were written on how to manage households and prepare food. In Holland[9] and England[10] competition grew between the noble families as to who could prepare the most lavish banquet. By the 1660s, cookery had progressed to an art form and good cooks were in demand. Many of them published their own books detailing their recipes in competition with their rivals.[11] Many of these books have now been translated and are available online</p>
                </div>    
            </div>
            <div id="footer" >
    <center> <p>&copy;2017,MATION.COM</p></center>
    </div>
        </div>
         
    </div>
        
   </form>
</body>
</html>
