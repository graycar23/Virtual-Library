<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddGame.aspx.cs" Inherits="VirtualLibrary.AddGame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;Title:
        <asp:TextBox ID="gameTitle" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Developer: &nbsp;<asp:TextBox ID="developer" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Year Released:
        <asp:TextBox ID="gameYear" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Console:
        <asp:TextBox ID="console" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="add" runat="server" Text="Add Game" style="margin-left: 10px" OnClick="add_Click" />
    </p>
    <p>
        &nbsp; &nbsp;<asp:Label ID="added" runat="server"></asp:Label>
    </p>
</asp:Content>

