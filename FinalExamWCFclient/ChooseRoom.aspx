<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChooseRoom.aspx.cs" Inherits="FinalExamWCFclient.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 160px;
        }
        .auto-style6 {
            width: 61px;
        }
        .auto-style8 {
        height: 40px;
    }
    .auto-style9 {
        width: 61px;
        height: 40px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <asp:Label ID="lblWelcome" runat="server" Text="Hi User"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Manage Previous Booking</asp:LinkButton>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p id=" ">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Rooms left for Staff:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblSRooms" runat="server" Font-Bold="True" Text="50"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Rooms left for Guests:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblGRooms" runat="server" Font-Bold="True" Text="100"></asp:Label>
    </p>
<p>
        <asp:Label ID="Label1" runat="server" Text="How many rooms would you require?"></asp:Label>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="*Each room can accomodate at max 4 guests*"></asp:Label>
    </p>
    <table class="auto-style4">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Type"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style6">
                &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Number Of Rooms" Width="150px"></asp:Label>
                &nbsp;<br />
                <br />
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Price / Room / Guest" Width="160px"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Inside Staterooms" Width="180px"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtInside" runat="server" TextMode="Number" min="0" max="2" Text="0" ></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="$125"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Ocean View Staterooms" Width="180px"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtOcean" runat="server" TextMode="Number" min="0" max="2" Text="0" ></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblOcean" runat="server" Text="$175"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label9" runat="server" Text="Luxurious Suites"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtSuite" runat="server" TextMode="Number" min="0" max="2" Text="0"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSuite" runat="server" Text="$290"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Continue</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsg" runat="server" Visible="False" ForeColor="Red"></asp:Label>
        </p>
    <p>
    </p>
</asp:Content>
