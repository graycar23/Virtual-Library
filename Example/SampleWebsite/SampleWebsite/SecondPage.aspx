<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SecondPage.aspx.cs" Inherits="SampleWebsite.SecondPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Second Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        This is my first page.  This is inside a p tag.
    </p>
    <img src="images/turtle.gif" style="height: 121px; width: 98px" />
    <br />
    <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>Red</asp:ListItem>
        <asp:ListItem>Green</asp:ListItem>
        <asp:ListItem>Blue</asp:ListItem>
    </asp:BulletedList>

    <ol>
        <li>Red</li>
        <li>Green</li>
        <li>Blue</li>
    </ol>
    <br />
</asp:Content>
