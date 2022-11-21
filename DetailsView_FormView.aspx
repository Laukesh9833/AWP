<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsView_FormView.aspx.cs" Inherits="PracticalQuestion.DetailsView_FormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>

            <asp:Label ID="Label1" runat="server" Text="Enter Student Id:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="RollNo" DataSourceID="SqlDataSource1" Width="346px">
                <EditItemTemplate>
                    RollNo:
                    <asp:Label ID="RollNoLabel1" runat="server" Text='<%# Eval("RollNo") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Class:
                    <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    RollNo:
                    <asp:TextBox ID="RollNoTextBox" runat="server" Text='<%# Bind("RollNo") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Class:
                    <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    RollNo:
                    <asp:Label ID="RollNoLabel" runat="server" Text='<%# Eval("RollNo") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Class:
                    <asp:Label ID="ClassLabel" runat="server" Text='<%# Bind("Class") %>' />
                    <br />
                </ItemTemplate>
            </asp:FormView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycol %>" SelectCommand="SELECT [RollNo], [Name], [Class] FROM [student]"></asp:SqlDataSource>

        </center>
    </form>
</body>
</html>
