<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCharacterLimitOnKeyUp.aspx.cs" Inherits="jquery_thingies.Functions.ShowCharacterLimitOnKeyUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="message">Your Message (Max. 250 Characters)<span class="require">*</span></label>
            <textarea class="form-control" maxlength="250" rows="8" id="message" runat="server" 
                onkeyup='$("#remainingchars").text(250 - this.value.length);'></textarea>
            Remaining:
            <label id="remainingchars"></label>
        </div>
    </form>
</body>
</html>
