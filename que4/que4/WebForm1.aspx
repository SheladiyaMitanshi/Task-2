<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="que4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 23px;
        }
        .auto-style2 {
            margin-left: 13px;
        }
        .auto-style3 {
            margin-left: 15px;
        }
        .auto-style4 {
            margin-left: 20px;
        }
        .auto-style5 {
            margin-left: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Customer Name<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4"></asp:TextBox>
            </h1>
            <h1>Email<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
            </h1>
            <h1>Address<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox>
            </h1>
            <h1>City<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1">
                <asp:ListItem>Rajkot</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                </asp:DropDownList>
            </h1>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Save" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
