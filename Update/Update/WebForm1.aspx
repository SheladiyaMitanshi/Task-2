<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Update.WebForm1" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 22px;
        }
        .auto-style2 {
            margin-left: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </h1>
            <h1>Gmail<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </h1>
            <h1>Gender<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </h1>
            <h1>Hobby<asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Traveling</asp:ListItem>
                <asp:ListItem>Writing</asp:ListItem>
                </asp:CheckBoxList>
            </h1>
            <h1>City<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Height="60px" Width="84px">
                <asp:ListItem>Rajkot</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                </asp:DropDownList>
            </h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Button" Width="91px" />
        </p>
    </form>
</body>
</html>
