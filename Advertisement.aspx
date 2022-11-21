<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertisement.aspx.cs" Inherits="PracticalQuestion.Advertisement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" KeywordFilter="Online" />

            </center>
        </div>
    </form>
</body>
</html>
