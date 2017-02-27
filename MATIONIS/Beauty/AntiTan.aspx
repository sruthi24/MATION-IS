<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AntiTan.aspx.cs" Inherits="Beauty_AntiTan" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style.css" rel="stylesheet" />
    <script src="../Scripts/MyScript.js"></script>
       <link href="../style.css" rel="stylesheet" />
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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



                     <b> Besan (Bengal Gram Flour) and Turmeric Face Pack:</b>
                  <p>

                      Besan (Bengal Gram Flour) and Turmeric Face Pack:

This face pack for tanned skin is a combo of bleaching and scrubbing with the wonder ingredient: Turmeric, often called the holy powder. It is not only important for its amazing medicinal properties, but also for its amazing effects on the skin. Turmeric adds a healthy glow to the skin and helps in reducing pigmentation and tan. Bengal gram works as a natural scrub for exfoliating the skin and removing dead cells.
                  </p>
                  

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
