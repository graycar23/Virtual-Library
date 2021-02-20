<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="VirtualLibrary.AddMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;Title:
        <asp:TextBox ID="movieTitle" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Director: &nbsp;<asp:TextBox ID="director" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Production Company: &nbsp;<asp:TextBox ID="company" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Year Released:
        <asp:TextBox ID="movieYear" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;Medium (DVD, Blu-Ray, etc.):
        <asp:TextBox ID="medium" runat="server" required="required"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="add" runat="server" Text="Add Movie" OnClick="add_Click" style="margin-left: 11px" />
    </p>
    <p>
        &nbsp; &nbsp;<asp:Label ID="added" runat="server"></asp:Label>
    </p>
</asp:Content>
