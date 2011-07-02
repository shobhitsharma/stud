<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="datesheet.aspx.cs" Inherits="datesheet" Title="Untitled Page" %>
<%@ Import Namespace="inst_mgmt" %>
<script runat="server">

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label10.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Button1.Visible = false;
        GridView1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        mdatesheet d = new mdatesheet();
        d.course = TextBox5.Text;
        d.sem = TextBox6.Text;
        d.sub = TextBox1.Text;
        d.subcode = TextBox2.Text;
        d.date = TextBox3.Text;
        d.shift = TextBox7.Text;
        d.timing = TextBox4.Text;
        d.examination = TextBox8.Text;
        mdatesheet.insert(d);
        mdatesheet.select();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        mdatesheet.select();
        
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 128%">
        <tr>
            <td align="center" style="width: 381px">
                <asp:Button ID="Button2" runat="server" Text="ADD NEW DATESHEET" 
                    onclick="Button2_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button3" runat="server" Text="VIEW DATESHEET" 
                    onclick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 381px">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label2" runat="server" Text="ENTER COURSE"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label3" runat="server" Text="ENTER SEMESTER"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label4" runat="server" Text="SUBJECT"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label5" runat="server" Text="SUBJECT CODE"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label10" runat="server" Text="DATE"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label7" runat="server" Text="SHIFT"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox7" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label8" runat="server" Text="TIMING"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label11" runat="server" Text="EXAMINATION" Visible="False"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox8" runat="server" Width="220px" Visible="False"></asp:TextBox>
            </td>
        </tr>
        </table>
    <table style="width: 95%">
        <tr>
            <td style="width: 264px; height: 273px;" align="center">
                &nbsp;<asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="120px" 
                    onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                <br />
                <table align="center" style="width: 330%">
                    <tr>
                        <td align="center">
                            <asp:Label ID="Label1" runat="server" ForeColor="#FFCC66" Height="20px" 
                                Text="DATESHEET" Width="50px"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Height="295px" Width="867px" AllowPaging="True" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                    AutoGenerateEditButton="True" ForeColor="White" DataSourceID="objdash" 
                    Visible="False">
                    <Columns>
                    <asp:BoundField HeaderText="COURSE" DataField="course"/>
                   <asp:BoundField HeaderText="SEMESTER" DataField="sem"/>
                   <asp:BoundField HeaderText="SUBJECT" DataField="sub"/>
                   <asp:BoundField HeaderText="SUB-CODE" DataField="subcode"/>
                   <asp:BoundField HeaderText="DATE" DataField="date"/>
                   <asp:BoundField HeaderText="SHIFT" DataField="shift"/>
                   <asp:BoundField HeaderText="TIMINGS" DataField="timing"/>
                   <asp:BoundField HeaderText="EXAM-TYPE" DataField="examination"/>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource runat="server" ID="objdash" TypeName="mdatesheet" DataObjectTypeName="mdatesheet" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 264px" align="justify">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

