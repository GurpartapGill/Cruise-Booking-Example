<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalExamWCFclient.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Welcome! Please login/sign up below to begin your booking"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter Your Username" Width="175px"></asp:Label>
            <br />
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username" ForeColor="Red" Width="175px" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter your Password"></asp:Label>
            <br />
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ForeColor="Red" Width="175px" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" Width="95px" />
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">New User? Register</asp:LinkButton>
        </td>
    </tr>
    </table>
<asp:Label ID="lblMsg" runat="server"></asp:Label>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
