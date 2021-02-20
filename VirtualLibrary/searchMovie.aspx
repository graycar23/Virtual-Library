<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchMovie.aspx.cs" Inherits="VirtualLibrary.searchMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;Movie Search</h1>
    <p>
        &nbsp; Search Movies by Title:
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="movieTitleSearch.aspx" Text="Search" />
&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Movies by Director:
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" PostBackUrl="directorSearch.aspx" Text="Search" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Movies by Producer:
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="producerSearch.aspx" Text="Search" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Movies by Year Released:
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" PostBackUrl="movieYearSearch.aspx" Text="Search" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Search Movies by Medium: &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" PostBackUrl="mediumSearch.aspx" Text="Search" />
    </p>
    <br />
&nbsp;<asp:Button ID="search" runat="server" OnClick="search_Click" Text="See All Movies" style="margin-left: 9px" />
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
