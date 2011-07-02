<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 847px">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateEditButton="True" AutoGenerateRows="False" Height="50px" 
            onpageindexchanging="DetailsView1_PageIndexChanging" Width="293px" DataSourceID="objstu">
        <Fields>
                    <asp:BoundField HeaderText="ROLL NO" DataField="enrolmentno"/>
                   <asp:BoundField HeaderText="FIRST NAME" DataField="firstname"/>
                   <asp:BoundField HeaderText="LAST NAME" DataField="lastname"/>
                   <asp:BoundField HeaderText="COURSE ID" DataField="courseid"/>
                   <asp:BoundField HeaderText="REFERENCE NO" DataField="referenceno"/>
                   <asp:BoundField HeaderText="ADDRESS 1" DataField="address1"/>
                   <asp:BoundField HeaderText="ADDRESS 2" DataField="address2"/>
            <link href="contentslider.css" rel="stylesheet" type="text/css" />  <asp:BoundField HeaderText="ADDRESS 3" DataField="address3"/>
                   <asp:BoundField HeaderText="CITY" DataField="city"/>
                    <asp:BoundField HeaderText="PIN" DataField="pin"/>
                   <asp:BoundField HeaderText="STATE" DataField="state"/>
                   <asp:BoundField HeaderText="DOB" DataField="dob"/>
                   <asp:BoundField HeaderText="FATHER NAME" DataField="fathername"/>
                   <asp:BoundField HeaderText="MOTHER NAME" DataField="mothername"/>
                   <asp:BoundField HeaderText="CATEGORY" DataField="category"/>
                   <asp:BoundField HeaderText="PHONE" DataField="phone"/>
                   <asp:BoundField HeaderText="GENDER" DataField="gender"/>
                   <asp:BoundField HeaderText="EMAIL" DataField="email"/>
                    
                    </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource runat="server" ID="objstu" TypeName="mstudent" DataObjectTypeName="mstudent" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
    </p>
</asp:Content>

