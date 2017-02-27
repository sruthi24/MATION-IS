<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CICD.aspx.cs" Inherits="Tech_CICD" %>
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

CICD

                    <ol>
                        <li>
                            Continuous Integration (CI) is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early.

By integrating regularly, you can detect errors quickly, and locate them more easily.
                        </li>
                        <li>
                            To go in Agile development,top down approach-  a lot of it comes down by automation and process
                        </li>
                        <li>
                            lot of tests run at every single checkin,team can choose whatever
                        </li>
                        <li>
                           CI pipeline stages  every change has a   automation for it 1)Code Review -> 2)pre-check script in script (tools)
                            centralised server which checks if this changelist wud break any 3)build-->4)run tests 5)repoert test results
                            6)file bugs for test failure

                        </li>
                        <li>
                            Continuous Integration brings multiple benefits to your organization:

Say goodbye to long and tense integrations
Increase visibility which enables greater communication
Catch issues fast and nip them in the bud
Spend less time debugging and more time adding features
Proceed in the confidence you’re building on a solid foundation
Stop waiting to find out if your code’s going to work
Reduce integration problems allowing you to deliver software more rapidly
                        </li>
                    </ol>
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