<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="MidtermB_991522132.SearchPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Search Page " Font-Bold="True" Font-Size="Larger"></asp:Label><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Search by Distance " Font-Bold="True"></asp:Label>
        <asp:Label ID="DisplayLabel" runat="server" Text="Distance = " ForeColor="#0066FF"></asp:Label><br /><br />
        <asp:TextBox ID="txtInputDistance" runat="server"></asp:TextBox><br /><br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:SqlDataSource runat="server"></asp:SqlDataSource>
        <br />
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <asp:Button ID="btnBacktoHome" runat="server" Text="Back" OnClick="btnBacktoHome_Click"/>
    </form>
</body>
</html>