<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="que1.WebForm1" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </h1>
            <h1>Age:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </h1>
            <h1>Grade:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </h1>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Save" Width="75px" /><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" CommandArgument='<%# Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Update">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" CommandArgument='<%# Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
