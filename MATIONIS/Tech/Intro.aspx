<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Intro.aspx.cs" Inherits="Tech_Intro" %>

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

  <h4>Introduction to technology</h4>
                   <p > An information system (IS) is any organized system for the collection, organization, storage and communication of information. More specifically, it is the study of complementary networks that people and organizations use to collect, filter, process, create and distribute data.
"An information system (IS) is a group of components that interact to produce information.</p>
                   
<p> Computer information system is a system composed of people and computers that processes or interprets information.[2][3][4][5] The term is also sometimes used in more restricted senses to refer to only the software used to run a computerized database or to refer to only a computer system.
Information systems is an academic study of systems with a specific reference to information and the complementary networks of hardware and software that people and organizations use to collect, filter, process, create and also distribute data. An emphasis is placed on an information system having a definitive boundary, users, processors, storage, inputs, outputs and the aforementioned communication networks.</p>
            </div>
        </div>
         <div id="footer" >
    <center> <p>&copy;2017,MATION.COM</p></center>
    </div>
    </div>
   </form>
</body>
</html>
