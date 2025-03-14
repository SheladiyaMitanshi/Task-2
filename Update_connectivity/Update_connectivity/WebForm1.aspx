<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Update_connectivity.WebForm1" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 23px;
        }
        .auto-style2 {
            margin-left: 22px;
        }
        .auto-style3 {
            margin-left: 29px;
        }
        .auto-style4 {
            margin-left: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Name<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
            </h1>
            <h1>Gmail<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
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
            <h1>City<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1">
                <asp:ListItem>Rajkot</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                </asp:DropDownList>
            </h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Save" />
        </p>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Update">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="Button2_Click" Text="Update" Width="65px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="Button4_Click" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
