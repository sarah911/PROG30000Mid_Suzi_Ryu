<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayInfoPage.aspx.cs" Inherits="MidtermB_991522132.DisplayInfoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Display Page" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
        </div><br />
        Currently displaying distance 450 or more, and the visit cost no more than 300
        <br /><br /><asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:SqlDataSource runat="server"></asp:SqlDataSource><br />
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" style="height: 26px" />
    </form>
</body>
</html>
