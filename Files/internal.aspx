<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="internal.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center">
                WELCOME TO INTERNALS PAGE</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 496px">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 496px; height: 10px;">
                </td>
            <td style="height: 10px">
                </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="NEW INTERNALS" Width="170px" />
            </td>
            <td align="center">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="VIEW INTERNALS" Width="170px" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label9" runat="server" Text="ENTER SR NO"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox8" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label2" runat="server" Text="ENTER ROLL NO"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px; height: 25px">
                <asp:Label ID="Label3" runat="server" Text="ENTER SUBJECT"></asp:Label>
            </td>
            <td align="left" style="height: 25px">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label4" runat="server" Text="MARKS(SESSIONALS)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label5" runat="server" Text="MARKS(SESSIONALS)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label6" runat="server" Text="MARKS(ATTENDANCE)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label7" runat="server" Text="MARKS(ASSIGNMENTS)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label8" runat="server" Text="TOTAL MARKS"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox7" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="120px" 
                    onclick="Button1_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="CANCEL" Width="120px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateEditButton="True" DataSourceID="objmarksint" 
                    ForeColor="White" >
                <Columns>
                <asp:BoundField  HeaderText="ROLL NO" DataField="rollno" ReadOnly="true"/>
                <asp:BoundField  HeaderText="SUBJECT" DataField="subject"/>
                <asp:BoundField  HeaderText="SESSIONAL 1" DataField="sessional1"/>
                <asp:BoundField  HeaderText="SESSIONAL 2" DataField="sessional2"/>
                <asp:BoundField  HeaderText="ATTENDANCE" DataField="attendance"/>
                <asp:BoundField  HeaderText="ASSINGMENTS" DataField="assignments"/>
                <asp:BoundField  HeaderText="TOTAL" DataField="total"/>
                </Columns>
                </asp:GridView>
                <asp:ObjectDataSource runat="server" ID="objmarksint" TypeName="marksint" DataObjectTypeName="marksint" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

