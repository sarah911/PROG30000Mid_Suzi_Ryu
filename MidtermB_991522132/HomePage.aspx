<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MidtermB_991522132.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is home page, welcome to ABCTour</div><br />
        <asp:Label ID="Label1" runat="server" Text="Midterm Hands-On (Set - B)"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Suzi Ryu"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="991522132"></asp:Label><br /><br />
        <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnDisplay" runat="server" Text="Display" OnClick="BtnDisplay_Click" />
    </form>
</body>
</html>
