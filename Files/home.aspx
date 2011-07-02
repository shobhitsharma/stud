<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>STUDENT MANAGEMENT SYSTEM</title> 
<style type="text/css"> 

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
    .style1
    {
        width: 100%;
    }

</style> 
<link href="css/19-1-10-1-14.css" rel="stylesheet" type="text/css" /> 
</head> 
 
<body> 
    <form id="form1" runat="server">
<div id="main"> 
<div id="header" align="center">STUDENT MANAGEMENT SYSTEM</div> 
<div id="banner"> 
<div id="menupanel"> 
<ul> 
<li><a href="home.aspx">Home</a></li>
                <li><a href="Default8.aspx">Notice Board</a></li>
                <li><a href="Default14.aspx">Latest News</a></li>
                <li><a href="Default6.aspx">Photo Album</a></li>
                <li><a href="Default5.aspx">Sign In</a></li>
                <li><a href="aboutus.aspx">About Us</a></li>
                <li><a href="contactus.aspx">Contact Us</a></li>
 
 
</ul> 
</div> 
 
</div> 
<div id="content"> 
  <div class="col1"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
      <span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">
      <p>
          STUDENT MANAGEMENT SYSTEM (SMS) works with your current systems and leverages 
          existing technology. It centralizes the mountains of data to learning and 
          automates routing administrative functionality. This package has education&#8217;s 
          most flexible and interactive scheduling function, thus meeting the 
          communication and information needs of the entire Institute community in real 
          time.</p>
      <p>
          STUDENT MANAGEMENT SYSTEM is the total management system imagined: the first 
          truly scalable institute management package with power to revolutionize the way 
          the Institutes are run. The software is more than just another technology 
          solution &#8211; it is an education system that will improve the way Institute is 
          managed</p>
      <table class="style1">
          <tr>
              <td>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;<asp:LinkButton 
                      ID="LinkButton2" runat="server" onclick="LinkButton2_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">SIGN 
                  IN</span></span></asp:LinkButton>
                  &nbsp;&nbsp;|&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
                      onclick="LinkButton1_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">SIGN 
                  UP</span></span></asp:LinkButton>
                        &nbsp; |&nbsp;
                  <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">TERMS</span></span></asp:LinkButton>
                  &nbsp; |&nbsp;
                  <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">FEEDBACK</span></span></asp:LinkButton>
                  &nbsp; |&nbsp;
                  <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">FAQ</span></span></asp:LinkButton>
                  &nbsp; |&nbsp;
                  <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">ABOUT 
                  US</span></span></asp:LinkButton>
                  &nbsp; |&nbsp;
                  <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">CONTACT 
                  US</span></span></asp:LinkButton>
                  &nbsp; |</td>
                    </tr>
                </table>
      </span></span> 
  </div> 
 
<div class="sider"><img src="images/mk.jpg" alt="sider1" height="100" 
        style="width: 220px" /><br /> 
  <br /> 
    <img src="images/ka.jpg" alt="sider2" height="100" style="width: 223px" /></div> 
</div> 
<div id="footer"><br /> 
    Copyright © ALL RIGHTS RESERVED<br />
		
 
 
 

    </form>
</body> 
</html> 
