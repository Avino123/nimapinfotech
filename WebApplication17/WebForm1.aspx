<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication17.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 53px;
            left: 175px;
        }
        .auto-style3 {
            position: absolute;
            top: 92px;
            left: 174px;
            z-index: 1;
        }
        .auto-style6 {
            width: 460px;
            height: 133px;
            position: absolute;
            top: 189px;
            left: 69px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 156px;
            z-index: 1;
            width: 71px;
            height: 29px;
            left: 30px;
        }
        .auto-style8 {
            position: absolute;
            top: 125px;
            left: 177px;
            z-index: 1;
            height: 17px;
        }
        .auto-style9 {
            position: absolute;
            top: 156px;
            z-index: 1;
            width: 72px;
            left: 292px;
            height: 24px;
        }
        .auto-style10 {
            position: absolute;
            top: 15px;
            left: 174px;
        }
        .auto-style11 {
            position: absolute;
            top: 154px;
            left: 427px;
            z-index: 1;
            width: 78px;
        }
        .auto-style12 {
            margin-top: 61px;
        }
        .auto-style5 {
            position: absolute;
            top: 156px;
            left: 158px;
            z-index: 1;
            height: 16px;
            width: 47px;
        }
        </style>
</head>
<body style="height: 329px">
    <form id="form1" runat="server">
        <p>
            ProductId
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" style="z-index: 1"></asp:TextBox>
        </p>
        <p>
            ProductName
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style2" style="z-index: 1">
                <asp:ListItem>Choose Product</asp:ListItem>
                <asp:ListItem>PEN</asp:ListItem>
                <asp:ListItem>PENCIL</asp:ListItem>
                <asp:ListItem>WHITENER</asp:ListItem>
                <asp:ListItem>ERASER</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            CategoryId
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style3">
                <asp:ListItem>Choose CategoryId</asp:ListItem>
                <asp:ListItem>PEN1</asp:ListItem>
                <asp:ListItem>PENC2</asp:ListItem>
                <asp:ListItem>WHI3</asp:ListItem>
                <asp:ListItem>ERAS4</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
CategoryName
            <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="25px" OnClick="Button4_Click" Text="SEARCH" Width="100px" BorderColor="#993366" ForeColor="#FFCC66" />
            <asp:Button ID="Button3" runat="server" CssClass="auto-style9" Height="25px" OnClick="Button3_Click" Text="DELETE" Width="100px" BorderColor="#FF0066" ForeColor="Red" />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="INSERT" Height="25px" BorderColor="#CC66FF" ForeColor="Fuchsia" Width="100px" />

       </p>
        <p class="auto-style12">
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="25px" OnClick="Button2_Click" Text="UPDATE" Width="100px" BorderColor="#FFFF66" ForeColor="#99CCFF" />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style6" ForeColor="#333333" GridLines="None">
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

            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style8">
                <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Primary</asp:ListItem>
                <asp:ListItem>Secondary</asp:ListItem>
            </asp:DropDownList>

        </p>
    </form>
</body>
</html>
