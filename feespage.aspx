<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feespage.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" style="width: 300px">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="ADD NEW FEES DETAIL" />
            </td>
            <td align="center">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="VIEW FEES DETAILS" Width="225px" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                <asp:Label ID="Label1" runat="server" Text="ENTER INSTALLMENT NO"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                <asp:Label ID="Label2" runat="server" Text="ENTER COURSE ID"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                <asp:Label ID="Label3" runat="server" Text="FEES PAID TO"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                <asp:Label ID="Label4" runat="server" Text="DUE DATE"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                <asp:Label ID="Label5" runat="server" Text="AMOUNT"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 300px">
                <asp:Label ID="Label6" runat="server" Text="CATEGORY"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table style="width: 100%">
        <tr>
            <td align="center" style="width: 225px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="INSERT" Width="125px" 
                    onclick="Button1_Click" />
            </td>
            <td align="center" style="width: 214px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="CANCEL" Width="125px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateEditButton="True" DataSourceID="objmfees" Width="519px" >
                    <Columns>
                    <asp:BoundField HeaderText="INSTALMENT NO" DataField="instalmentno" ReadOnly="true" />
                    <asp:BoundField HeaderText="COURSE ID" DataField="courseid" />
                    <asp:BoundField HeaderText="PAID TO" DataField="paidto"/>
                    <asp:BoundField HeaderText="DUE DATE" DataField="duedate" />
                    <asp:BoundField HeaderText="AMOUNT" DataField="amount" />
                    <asp:BoundField HeaderText="CATEGORY" DataField="category" />
                    
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource  runat="server" ID="objmfees" TypeName="mfee" DataObjectTypeName="mfee" SelectMethod="select" InsertMethod="insert" UpdateMethod="update" /> 
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

