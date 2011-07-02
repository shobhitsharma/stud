<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="useracc.aspx.cs" Inherits="useracc" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 960px; height: 528px;" align="left">
    <tr>
        <td style="width: 496px" align="center">
            ROLL NO</td>
        <td align="left">
            <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            FIRST NAME</td>
        <td align="left">
            <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            LAST NAME</td>
        <td align="left">
            <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            COURSE ID</td>
        <td align="left">
            <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            REFERENCE NO</td>
        <td align="left">
            <asp:TextBox ID="TextBox5" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            ADDRESS 1</td>
        <td align="left">
            <asp:TextBox ID="TextBox6" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            ADDRESS 2</td>
        <td align="left">
            <asp:TextBox ID="TextBox7" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            ADDRESS 3</td>
        <td align="left">
            <asp:TextBox ID="TextBox11" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr align="left">
        <td style="width: 496px" align="center">
            CITY</td>
        <td align="left">
            <asp:TextBox ID="TextBox8" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            PIN</td>
        <td align="left">
            <asp:TextBox ID="TextBox12" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            STATE</td>
        <td align="left">
            <asp:TextBox ID="TextBox13" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            EMAIL ID</td>
        <td align="left">
            <asp:TextBox ID="TextBox9" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            D.O.B.</td>
        <td align="left">
            <asp:TextBox ID="TextBox14" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            FATHER NAME</td>
        <td align="left">
            <asp:TextBox ID="TextBox15" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            MOTHER NAME</td>
        <td align="left">
            <asp:TextBox ID="TextBox16" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            CATEGORY</td>
        <td align="left">
            <asp:TextBox ID="TextBox17" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            GENDER</td>
        <td align="left">
            <asp:TextBox ID="TextBox18" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            PHONE</td>
        <td align="left">
            <asp:TextBox ID="TextBox19" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 496px" align="center">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="101px" 
                onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 496px">
            &nbsp;</td>
        <td align="left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    </table>
</asp:Content>

