<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="que3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 26px;
        }
        .auto-style2 {
            margin-left: 34px;
        }
        .auto-style3 {
            margin-left: 25px;
        }
        .auto-style4 {
            margin-left: 15px;
        }
        .auto-style5 {
            margin-left: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Emp Name<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
            </h1>
            <h1>Date Of Birth<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
            </h1>
            <h1>Department<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
            </h1>
            <h1>Profile Image<asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style4" />
            </h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Save" />
        </p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
