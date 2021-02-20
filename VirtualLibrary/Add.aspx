<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="VirtualLibrary.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;Title:
        <asp:TextBox ID="bookTitle" runat="server" style="margin-right: 15px" required = "required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Author: &nbsp;<asp:TextBox ID="author" runat="server" required ="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Publisher: &nbsp;<asp:TextBox ID="publisher" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;
        Year Published:
        <asp:TextBox ID="bookYear" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="bookButton" runat="server" OnClick="bookButton_Click" style="margin-left: 9px; margin-bottom: 10px" Text="Add Book" />
    </p>
    <p>
        &nbsp;
        <asp:Label ID="added" runat="server"></asp:Label>
        &nbsp;</p>
</asp:Content>
