<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchOnEnter.aspx.cs" Inherits="jquery_thingies.Functions.SearchOnEnter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function txtsearchkeydown(event) {
            if (event.keyCode == "13") {
                document.getElementById('btnsearch').click();
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtsearch" runat="server" onkeydown="txtsearchkeydown(event);"></asp:TextBox>
        <button type="button" id="btnsearch" runat="server" onserverclick="btnsearch_ServerClick">Search</button>
    </form>
</body>
</html>
