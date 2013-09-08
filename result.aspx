<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="Default6" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="width: 436px">
                PLEASE ENTER YOUR ROLL NO TO CHECK&nbsp; THE RESULT</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 436px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 436px; height: 22px">
                ENTER ROLL NO</td>
            <td align="left" style="height: 22px">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 436px">
                ENTER SEMESTER</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 436px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 436px">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
            </td>
            <td align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="CANCEL" />
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="RESULT"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     Width="192px" ForeColor="White">
                   <columns>
                    <asp:BoundField HeaderText="SR.NO" DataField="srno"/>
                    <asp:BoundField HeaderText="SUBID" DataField="subid"/>
                    <asp:BoundField HeaderText="ROLL NO" DataField="enrolmentno"/>
                    <asp:BoundField HeaderText="MARKS THEORY" DataField="markstheory"/>
                    <asp:BoundField HeaderText="MARKS PRACTICAL" DataField="markspractical" />
                    <asp:BoundField HeaderText="DATE OF RESULT" DataField="res_date" />
                     </columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 332px; height: 22px">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
    </table>
    <p align="center">
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="CHECK RESULT BRANCH WISE" />
    </p>
    <table style="width: 100%">
        <tr>
            <td style="height: 22px; width: 699px">
                &nbsp;</td>
            <td style="height: 22px">
            </td>
        </tr>
    </table>
</asp:Content>

