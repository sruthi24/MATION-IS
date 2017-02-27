<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="../style.css" rel="stylesheet" />
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

  
     <script type="text/javascript">
         $(function () {
             $(document).tooltip({
                 $(this).
             });
       
              $("#textareacontainer").resizable({
                  minWidth: 50,
                  maxWidth:1270,
                 resize: function (event,ui) {
                     var $elm = ui.size.width;
                     //var p1 = parseInt($("#textareacontainer").width());
                     var p2 = parseInt($("#iframecontainer").width());
                     var p3 = parseInt($("#container").width());
                     if ($elm == 1270) {
                         ("#iframecontainer").innerHTML="";
                     }
                         
                     $("#textareacontainer").css({ width: $elm });
                    
                     $("#iframecontainer").css({ width: p3 - $elm-20 });

                     $("#contentbar2").css({ width: p3 - $elm-20 });
}
                

                
             });
         });
         
      </script>
</head>
<body>
  
         
        
    
       <div id="container">
    
      
       <div id="textareacontainer" title="Expand sidebar">
            <h3 class="ui-widget-header">Resizable</h3>
            <%--<div id="textarea">
    <div id="textareawrapper">      
   
         <p>+1 this is very smooth. Nice one, I just played around with it in a basic fiddle and the results are nice. I don't even feel like my jQuery alternative answer is relevant and I remove it for now, unless OP
                can't amend CSS or has any other reservations/issues with the CSS solution. </p>

                
        </div>
            </div>--%>
       
        
    
    </div>
        <div id="iframecontainer">
           <p>+1 this is very smooth. Nice one, I just played around with it in a basic fiddle and the results are nice. I don't even feel like my jQuery alternative answer is relevant and I remove it for now, unless OP
                can't amend CSS or has any other reservations/issues with the CSS solution. </p>
        </div>
        </div>
  
</body>
</html>
