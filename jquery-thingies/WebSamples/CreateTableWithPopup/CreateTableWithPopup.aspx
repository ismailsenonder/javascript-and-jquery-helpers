<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTableWithPopup.aspx.cs" Inherits="jquery_thingies.WebSamples.CreateTableWithPopup.CreateTableWithPopup" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Table With Popup Modal</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        function passValues() {
            document.getElementById('<%=tablecontenthidden.ClientID%>').value = document.getElementById('<%=tablecontent.ClientID%>').innerHTML;
        }

        function generateRandomId() {
            function s4() {
                return Math.floor((1 + Math.random()) * 0x10000)
                    .toString(16)
                    .substring(1);
            }
            return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
                s4() + '-' + s4() + s4() + s4();
        }

        function deleteElement(id) {
            var elem = document.getElementById(id);
            elem.remove();
        }

        $(document).on("click", "#btnAddContent", function (event) {
            var contentString = '<td style="padding: 15px; border: 1px solid #CCC;">' + $('#content1').val() + '</td>';
            contentString += '<td style="padding: 15px; border: 1px solid #CCC;">' + $('#content2').val() + '</td>';
            contentString += '<td style="padding: 15px; border: 1px solid #CCC;">' + $('#content3').val() + '</td>';
            $('#content1').val("");
            $('#content2').val("");
            $('#content3').val("");
            addContentToPage(contentString);
            $('#contentModal').modal('toggle');

        });

        function addContentToPage(contentString) {
            var randomId = generateRandomId();
            var table = document.getElementById('<%=tablecontent.ClientID%>');
            var tr = document.createElement("tr");
            tr.setAttribute("id", randomId);
            var td = document.createElement('td');
            td.innerHTML = '&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" id="btn' + randomId + '" onclick="deleteElement(\'' + randomId + '\'); return false;">REMOVE</button>';
            tr.innerHTML = contentString;
            tr.appendChild(td);
            table.appendChild(tr);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="panel panel-default">
                <div class="panel-heading">ADD - REMOVE CONTENT</div>
                <div class="panel-body">
                    <div class="form-group row">
                        <div class="col-md-8">
                            <p>You can add and remove content. Just click the button:</p>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#contentModal">Add Content</button>

                            <div class="modal fade" id="contentModal" tabindex="-1" role="dialog" aria-labelledby="contentModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="contentModalLabel">Add Content</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label for="content1" class="form-control-label">Content 1:</label>
                                                <input type="text" class="form-control" id="content1" />
                                            </div>
                                            <div class="form-group">
                                                <label for="content2" class="form-control-label">Content 2:</label>
                                                <input class="form-control" id="content2" />
                                            </div>
                                            <div class="form-group">
                                                <div class="form-group">
                                                        <label for="content3" class="form-control-label">Content 3 (Dropdown):</label>
                                                        <select id="content3" class="form-control">
                                                            <option value="Dropdown Value 1">Dropdown Value 1</option>
                                                            <option value="Dropdown Value 2">Dropdown Value 2</option>
                                                            <option value="Dropdown Value 3">Dropdown Value 3</option>
                                                            <option value="Dropdown Value 4">Dropdown Value 4</option>
                                                        </select>
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary" id="btnAddContent">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table id="tablecontent" runat="server" cellpadding="10" cellspacing="0" style="width: 100%; margin-top: 30px;">
                                <tr style="background-color: #eee; font-weight: bold;">
                                    <td style="padding: 15px; border: 1px solid #CCC; width: 30%;">CONTENT 1</td>
                                    <td style="padding: 15px; border: 1px solid #CCC; width: 30%;">CONTENT 2</td>
                                    <td style="padding: 15px; border: 1px solid #CCC; width: 35%;">CONTENT 3</td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
            </div>

            <asp:Button ID="btnGetServerSideContent" runat="server" CssClass="btn btn-primary" Text="GET CONTENT FROM SERVER SIDE" 
                OnClick="btnGetServerSideContent_Click" OnClientClick="passValues()" />
            <!-- END CONTENT -->

            <asp:HiddenField ID="tablecontenthidden" runat="server" />
        </div>
    </form>
</body>
</html>
