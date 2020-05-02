<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChooseGuest.aspx.cs" Inherits="FinalExamWCFclient.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 150px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblWelcome" runat="server" Text="Hi User"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Manage Previous Booking</asp:LinkButton>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;</p>
<p>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Please Enter The Number Of Guests in Room"></asp:Label>
</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table class="auto-style4">
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Adults:"></asp:Label>
            <br />
            <br />
        </td>
        <td>
            <asp:TextBox ID="txtAdult" runat="server" TextMode="Number" Text="0" min="0" max="4"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Children (0 - 16yr):"></asp:Label>
            <br />
            <br />
        </td>
        <td>
            <asp:TextBox ID="txtChildren" runat="server" TextMode="Number" Text="0" min="0" max="4"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Seniors (60yr+):" Width="155px"></asp:Label>
            <br />
            <br />
        </td>
        <td>
            <asp:TextBox ID="txtSenior" runat="server" TextMode="Number" Text="0" min="0" max="4"></asp:TextBox>
            <br />
        </td>
    </tr>
</table>
<p>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Continue</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Visible="False">Next Room:</asp:LinkButton>
</p>
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
