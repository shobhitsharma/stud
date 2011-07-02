<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 495px">
            &nbsp;</td>
        <td style="width: 461px">
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 495px">
            USER NAME</td>
        <td align="left" style="width: 461px">
            <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 495px">
            PASSWORD</td>
        <td align="left" style="width: 461px">
            <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 495px">
            &nbsp;</td>
        <td style="width: 461px">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" style="width: 495px">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="170px" 
                    onclick="Button1_Click" />
        </td>
        <td align="center" style="width: 461px">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="CANCEL" 
                    Width="170px" />
        </td>
    </tr>
</table>
</asp:Content>

