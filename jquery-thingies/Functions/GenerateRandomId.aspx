<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateRandomId.aspx.cs" Inherits="jquery_thingies.Functions.GenerateRandomId" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate Random Id with Jquery</title>
    <script type="text/javascript">
        function generateRandomId() {
            function s4() {
                return Math.floor((1 + Math.random()) * 0x10000)
                    .toString(16)
                    .substring(1);
            }
            //return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
            alert(s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4());
        }
    </script>
    <meta name="description" content="This function is from a Stackoverflow question page. It does not guarantee uniqueness but close enough :)" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button onclick="generateRandomId()">Click me</button>
        </div>
    </form>
</body>
</html>
