<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="que5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 20px;
        }
        .auto-style2 {
            margin-left: 16px;
        }
        .auto-style3 {
            margin-left: 19px;
        }
        .auto-style4 {
            margin-left: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Title<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
            </h1>
            <h1>Author<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
            </h1>
            <h1>Price<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox>
            </h1>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Read" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" OnClick="Button2_Click" Text="Write" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </form>
</body>
</html>
