<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReviewPurchase.aspx.cs" Inherits="FinalExamWCFclient.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 180px;
    }
    .auto-style5 {
        width: 170px;
    }
    .auto-style6 {
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblWelcome" runat="server" Text="Hi User"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
    <asp:Label ID="lblType" runat="server" Visible="False"></asp:Label>
    <br />
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label14" runat="server" Text="Name:"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Label ID="lblName" runat="server" Width="180px"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label15" runat="server" Text="Phone number:" Width="170px"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Label ID="lblPhone" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label16" runat="server" Text="Email ID:"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label17" runat="server" Text="Date:"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Label ID="lblDate" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label18" runat="server" Text="Guests:"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Label ID="lblGuest" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label19" runat="server" Text="Rooms:"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Label ID="lblRoom" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>
    &nbsp;
</p>
<p class="auto-style6">
    <asp:Label ID="Label20" runat="server" Text="Discount:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblDisc" runat="server"></asp:Label>
</p>
<p class="auto-style6">
    <asp:Label ID="Label21" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblPrice" runat="server"></asp:Label>
</p>
<p class="auto-style6">
    <asp:Label ID="lblMsg" runat="server" Font-Size="X-Large" ForeColor="Red" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXIT" />
    </p>
<p class="auto-style6">
    &nbsp;</p>
</asp:Content>
