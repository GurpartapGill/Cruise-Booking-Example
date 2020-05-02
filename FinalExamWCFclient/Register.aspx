<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalExamWCFclient.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Hi New User"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label2" runat="server" Text="Please Fill Up The Form Below To Register:"></asp:Label>
    </p>
    <table class="auto-style4">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Enter Your First Name" Width="160px"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be left blank" ControlToValidate="txtFname" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Enter Your Last Name"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field cannot be left blank" ControlToValidate="txtLname" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Enter Your Phone Number" Width="190px"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field cannot be left blank" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Enter Your Email ID"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field cannot be left blank" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Choose A Username"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUname" ErrorMessage="This field cannot be left blank" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Enter Your Password"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="This field cannot be left blank" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Are You A Staff Member?"></asp:Label>
                <br />
                <br />
                <br />
            </td>
            <td>
                <asp:RadioButton ID="rdbYes" runat="server" GroupName="rdbStaff" Text="Yes" />
                <br />
                <br />
                <asp:RadioButton ID="rdbNo" runat="server" CausesValidation="True" GroupName="rdbStaff" Text="No" />
                <br />
            </td>
            <td>
                <br />
            </td>
        </tr>
    </table>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTER" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="GO BACK" />
    </p>
    <p>
    &nbsp;
        <asp:Label ID="lblMsg" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
    </p>
</asp:Content>
