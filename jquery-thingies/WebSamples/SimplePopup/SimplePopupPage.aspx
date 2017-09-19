<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimplePopupPage.aspx.cs" Inherits="jquery_thingies.WebSamples.SimplePopup.SimplePopupPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is a Simple Popup Page</title>
    <meta name="author" content="İsmail Şenönder" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="popupmodule.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            THIS IS THE PAGE CONTENT
        </div>
        <div id="popupboxes">
            <div style="display: none;" id="dialog" class="window">
                <h3>THIS IS THE POPUP TITLE</h3>
                <div id="popupbodytext">
                    <p>THIS IS THE POPUP CONTENT - LOREM IPSUM DOLOR SIT AMET... </p>
                </div>
                <div id="popupfoot"><a href="#" class="close agree">CLOSE</a> </div>
            </div>
            <div style="font-size: 32pt; color: white; display: none; opacity: 0.8;" id="popupmask"></div>
        </div>
        <script type="text/javascript" src="popupmodule.js"></script>
    </form>
</body>
</html>
