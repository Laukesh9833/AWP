<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls.aspx.cs" Inherits="PracticalQuestion.ValidationControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
&nbsp;
                <asp:TextBox ID="txt1" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="Username must enter!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Enter Password:"></asp:Label>
&nbsp;
                <asp:TextBox ID="txt2" runat="server" style="margin-left: 0px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
&nbsp;
                <asp:TextBox ID="txt3" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt2" ControlToValidate="txt3" ErrorMessage="Password Not Match!" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Enter Age:"></asp:Label>
&nbsp;
                <asp:TextBox ID="txt4" runat="server" style="margin-left: 0px"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt4" ErrorMessage="Not Valid!" ForeColor="Red" MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Enter Email:"></asp:Label>
&nbsp;
                <asp:TextBox ID="txt5" runat="server" style="margin-left: 0px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt5" ErrorMessage="Email Not Valid!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Select Your Country:"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>Shrilanka</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="Button1_Click()" ControlToValidate="DropDownList1" ForeColor="Red"></asp:CustomValidator>
&nbsp;
                <asp:Label ID="lbl1" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

            </center>
        </div>
    </form>
</body>
</html>
