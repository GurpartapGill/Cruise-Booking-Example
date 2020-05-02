<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChooseDate.aspx.cs" Inherits="FinalExamWCFclient.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblWelcome" runat="server" Text="Hi User"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Manage Previous Booking</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" Text="Please Select When Would You like To Embark On A Journey With Us"></asp:Label>
</p>
<p>
    <asp:RadioButton ID="rdb1" runat="server" GroupName="radioDate" Text="August 3, 2020"/>
</p>
<p>
    <asp:RadioButton ID="rdb2" runat="server" GroupName="radioDate" Text="August 10, 2020" />
</p>
<p>
    <asp:RadioButton ID="rdb3" runat="server" GroupName="radioDate" Text="August 17, 2020" />
</p>
<p>
    <asp:RadioButton ID="rdb4" runat="server" GroupName="radioDate" Text="August 24, 2020" />
</p>
<p>
&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Continue</asp:LinkButton>
</p>
<p>
    &nbsp;&nbsp;
    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    </p>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>
