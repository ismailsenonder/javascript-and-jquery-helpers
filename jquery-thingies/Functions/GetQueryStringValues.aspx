<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetQueryStringValues.aspx.cs" Inherits="jquery_thingies.Functions.GetQueryStringValues" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is a Querystring Example</title>
    <meta name="author" content="İsmail Şenönder" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">

        var getUrlParameter = function getUrlParameter(sParam) {
            var sPageURL = decodeURIComponent(window.location.search.substring(1)),
                sURLVariables = sPageURL.split('&'),
                sParameterName,
                i;

            for (i = 0; i < sURLVariables.length; i++) {
                sParameterName = sURLVariables[i].split('=');

                if (sParameterName[0] === sParam) {
                    return sParameterName[1] === undefined ? true : sParameterName[1];
                }
            }
        };

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button id="Button3" runat="server" onserverclick="Button3_ServerClick">Click Me!</button>
            <button id="Button1" runat="server" onserverclick="Button1_ServerClick">Click Me!</button>
            <button id="Button2" runat="server" onserverclick="Button2_ServerClick">Click Me!</button>
            Search for this parameter: <input type="text" name="querystringparameter" id="querystringparameter" />
            <button id="Button4" onclick="alert(getUrlParameter($('#querystringparameter').val()));">Search</button>
        </div>
    </form>
</body>
</html>
