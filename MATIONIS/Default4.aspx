﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Resizable - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #resizable { width: 150px; height: 150px; padding: 0.5em; }
  #resizable h3 { text-align: center; margin: 0; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#div1").resizable();
          $('#div1').resize(function () {
              $('#div2').width($("#parent").width() - $("#div1").width());
          });
          //    $("#resizable").resizable();
          //});
          //$(function () {
          //    $("#rez").resizable();
          });
     
  </script>
</head>
<body>
 <div id="parent">
   <div id="div1"> My Data1 </div> 
    <div id="div2"> My Data2</div> 
</div>
<%--<div id="resizable" class="ui-widget-content" style="float:left;background-color:aqua">
  <h3 class="ui-widget-header">Resizable</h3>
</div>
 
 <div id="rez" class="ui-widget-content " style="float:right;background-color:grey">
  <h3 class="ui-widget-header">Resizable</h3>--%>
<%--</div>--%>
</body>
</html>