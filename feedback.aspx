<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td align="center">
            HAVE ANY QUERY....PLEASE FEEL FREE TO FILL THE FEEDBACK FORM....</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
<table style="width: 100%">
    <tr>
        <td style="width: 461px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            NAME</td>
        <td align="left">
            <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            PHONE NUMBER</td>
        <td align="left">
            <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            EMAIL ID</td>
        <td align="left">
            <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            ADDRESS</td>
        <td align="left">
            <asp:TextBox ID="TextBox4" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            CITY</td>
        <td align="left">
            <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            FEEDBACK</td>
        <td align="left">
            <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 461px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" style="width: 461px">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="170px" 
                onclick="Button1_Click" />
        </td>
        <td align="center">
            <asp:Button ID="Button2" runat="server" Text="CANCEL" Width="170px" 
                onclick="Button2_Click" />
        </td>
    </tr>
</table>
    <table style="width: 100%">
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="objfeed" 
                    AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" 
                    ForeColor="White" onpageindexchanging="GridView1_PageIndexChanging" 
                    Width="554px">
                </asp:GridView>
                <asp:ObjectDataSource runat="server" ID="objfeed" TypeName="feedback" DataObjectTypeName="feedback" SelectMethod="select" UpdateMethod="update" InsertMethod="insert"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

