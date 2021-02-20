<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PaymentProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Customer Number:"></asp:Label>
            <asp:TextBox ID="custNum" runat="server"></asp:TextBox>
            <br />
            <br />
            Check Number:
            <asp:TextBox ID="ckNum" runat="server"></asp:TextBox>
            <br />
            <br />
            Amount<asp:TextBox ID="amt" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add Payment" />
        </div>
    </form>
</body>
</html>
