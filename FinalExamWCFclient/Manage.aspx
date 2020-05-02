<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="FinalExamWCFclient.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-top: 0px;
        }
    .auto-style4 {
        width: 180px;
    }
    .auto-style5 {
        width: 170px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
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
                    <br /></td>
                <td>
                    <asp:Label ID="lblName" runat="server" Width="180px"></asp:Label>
                    <br />
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label22" runat="server" Text="Booking ID" Width="150px"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:Label ID="lblId" runat="server"></asp:Label>
                    <br />
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label17" runat="server" Text="Date:"></asp:Label>
                    <br />
                    <br /></td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                    <br />
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label18" runat="server" Text="Guests:"></asp:Label>
                    <br />
                    <br /></td>
                <td>
                    <asp:Label ID="lblGuest" runat="server"></asp:Label>
                    <br />
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label19" runat="server" Text="Rooms:"></asp:Label>
                    <br />
                    <br /></td>
                <td>
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                    <br />
                    <br /></td>
            </tr>
        </table>
&nbsp;
        <asp:Label ID="Label21" runat="server" Text="Price"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPrice" runat="server"></asp:Label>
    </p>
    <p class="auto-style6">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Refund And Cancel (30% of total price)</asp:LinkButton>
    </p>
    <p class="auto-style6">
        <asp:Label ID="lblMsg" runat="server" Visible="False" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
    </p>
<p class="auto-style6">
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Go Back</asp:LinkButton>
    </p>
    <p class="auto-style6">
        &nbsp;</p>
</asp:Content>
