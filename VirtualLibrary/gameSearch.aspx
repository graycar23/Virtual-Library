<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gameSearch.aspx.cs" Inherits="VirtualLibrary.gameSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp; Game Search</h1>
    <p>
        &nbsp;&nbsp; Search Games by Title:
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="gameTitleSearch.aspx" Text="Search" />
&nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Games by Developer: <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" PostBackUrl="developerSearch.aspx" Text="Search" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Games by Console:
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="consoleSearch.aspx" Text="Search" />
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Games by Year Released:
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" PostBackUrl="gameYearSearch.aspx" Text="Search" />
        &nbsp;</p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;
    <asp:Button ID="search" runat="server" OnClick="Button1_Click1" style="margin-left: 0px" Text="See All Games" />
    <br />
    <p>
        &nbsp;<asp:GridView ID="GridView1" runat="server" style="margin-left: 15px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
</asp:Content>
