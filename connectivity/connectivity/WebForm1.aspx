<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="connectivity.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </h1>
            <h1>Gmail:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </h1>
            <h1>Gender:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </h1>
            <h1>Hobby:<asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Writing</asp:ListItem>
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Traveling</asp:ListItem>
                </asp:CheckBoxList>
            </h1>
            <h1>City:<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Rajkot</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                </asp:DropDownList>
            </h1>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="Save" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
