<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.1)ShowData.aspx.cs" Inherits="PracticalQuestion._1__1_ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
                </asp:DetailsView>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Data" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>

            </center>
        </div>
    </form>
</body>
</html>
