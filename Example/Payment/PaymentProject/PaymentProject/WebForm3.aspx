<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="PaymentProject.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Search for Payment<br />
            <br />
            Customer Number:
            <asp:TextBox ID="custNum" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
        </div>
    </form>
    
</body>
</html>
