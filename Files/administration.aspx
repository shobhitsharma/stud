<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="administration.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 933px">
        <br />
        <table style="width: 100%; height: 160px;">
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="230px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="230px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="230px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="230px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 162px; height: 26px">
                    </td>
                <td style="height: 26px">
                    <asp:Button ID="Button1" runat="server" Text="ADD" Width="101px" 
                        onclick="Button1_Click" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="CANCEL" Width="100px" 
                        Visible="False" />
                </td>
            </tr>
            <tr>
                <td style="width: 162px; height: 26px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px; height: 26px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            </table>
        <p align="left">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                Width="930px" AutoGenerateEditButton="True" 
                DataSourceID="objadministration" ForeColor="White">
                <Columns>
                <asp:BoundField HeaderText="NAME" DataField="name" />
                <asp:BoundField HeaderText="DESIGNATION" DataField="designation" />
                <asp:BoundField HeaderText="NUMBER" DataField="number" />
                <asp:BoundField HeaderText="EMAIL ID" DataField="email" /></Columns>
            </asp:GridView>
            <asp:ObjectDataSource runat="server" ID="objadministration" TypeName="administration" DataObjectTypeName="administration" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
        </p>
        </p>
</asp:Content>

