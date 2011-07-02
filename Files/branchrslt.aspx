<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="branchrslt.aspx.cs" Inherits="Default7" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 130%">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateEditButton="True" 
                    Height="174px" Width="692px" DataSourceID="objre">
                    <columns>
                    <asp:BoundField HeaderText="SR.NO" DataField="srno"/>
                     <asp:BoundField HeaderText="SEMESTER" DataField="batchid" />
                    <asp:BoundField HeaderText="SUBID" DataField="subid"/>
                   
                    <asp:BoundField HeaderText="ROLL NO" DataField="enrolmentno"/>
                    <asp:BoundField HeaderText="MARKS THEORY" DataField="markstheory"/>
                    <asp:BoundField HeaderText="MARKS PRACTICAL" DataField="markspractical" />
                    <asp:BoundField HeaderText="DATE OF RESULT" DataField="res_date" />
                     </columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="objre" runat="server" TypeName="mresult" DataObjectTypeName="mresult" SelectMethod="select" UpdateMethod="update"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

