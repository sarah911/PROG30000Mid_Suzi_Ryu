<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertPage.aspx.cs" Inherits="MidtermB_991522132.InsertPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="Insert Page" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Text="Please Enter Name of City and Distance." Font-Bold="True"></asp:Label><br />
        </div><br />
        <asp:Label ID="Label1" runat="server" Text="City Name" Font-Bold="True"></asp:Label><br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name field can not be empty" ControlToValidate="txtName" Font-Bold="True" ForeColor="#FF3300" Font-Italic="True"></asp:RequiredFieldValidator>
        
        <br />
        <asp:Label ID="Label2" runat="server" Text="Distance" Font-Bold="True"></asp:Label><br />
        <asp:TextBox ID="txtDistance" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Distance can not be empty" ControlToValidate="txtDistance" Font-Bold="True" ForeColor="#FF3300" Font-Italic="True"></asp:RequiredFieldValidator> 
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must be between 0 to 1000.0" MaximumValue="1000" Type="Double" MinimumValue="0" ControlToValidate="txtDistance" Font-Bold="True" ForeColor="#FF3300" Font-Italic="True"></asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
    </form>
</body>
</html>