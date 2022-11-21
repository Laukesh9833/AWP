<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2)cube_fibonacci.aspx.cs" Inherits="PracticalQuestion._2_cube_fibonacci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <asp:Label ID="Label1" runat="server" Text="Enter A Number:" ToolTip=" "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <br />
                <br />
                <asp:Label ID="lbl1" runat="server"></asp:Label>

            </center>
        </div>
    </form>
</body>
</html>
