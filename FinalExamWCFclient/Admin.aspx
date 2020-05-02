<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalExamWCFclient.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go Back</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <asp:Label ID="Label1" runat="server" Text="BOOKINGS" Font-Bold="True"></asp:Label>
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
            <asp:BoundField DataField="RoomTypeId" HeaderText="RoomTypeId" SortExpression="RoomTypeId" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
            <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
            <asp:BoundField DataField="NumAdult" HeaderText="NumAdult" SortExpression="NumAdult" />
            <asp:BoundField DataField="NumChildren" HeaderText="NumChildren" SortExpression="NumChildren" />
            <asp:BoundField DataField="NumSenior" HeaderText="NumSenior" SortExpression="NumSenior" />
            <asp:BoundField DataField="NumRooms" HeaderText="NumRooms" SortExpression="NumRooms" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT * FROM [booking]" DeleteCommand="DELETE FROM [booking] WHERE [BookingId] = @BookingId" InsertCommand="INSERT INTO [booking] ([RoomTypeId], [Username], [UserType], [BookingDate], [NumAdult], [NumChildren], [NumSenior], [NumRooms], [Price]) VALUES (@RoomTypeId, @Username, @UserType, @BookingDate, @NumAdult, @NumChildren, @NumSenior, @NumRooms, @Price)" UpdateCommand="UPDATE [booking] SET [RoomTypeId] = @RoomTypeId, [Username] = @Username, [UserType] = @UserType, [BookingDate] = @BookingDate, [NumAdult] = @NumAdult, [NumChildren] = @NumChildren, [NumSenior] = @NumSenior, [NumRooms] = @NumRooms, [Price] = @Price WHERE [BookingId] = @BookingId">
        <DeleteParameters>
            <asp:Parameter Name="BookingId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RoomTypeId" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="BookingDate" Type="String" />
            <asp:Parameter Name="NumAdult" Type="Int32" />
            <asp:Parameter Name="NumChildren" Type="Int32" />
            <asp:Parameter Name="NumSenior" Type="Int32" />
            <asp:Parameter Name="NumRooms" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RoomTypeId" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="BookingDate" Type="String" />
            <asp:Parameter Name="NumAdult" Type="Int32" />
            <asp:Parameter Name="NumChildren" Type="Int32" />
            <asp:Parameter Name="NumSenior" Type="Int32" />
            <asp:Parameter Name="NumRooms" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="BookingId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Text="USERS:" Font-Bold="True"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Username">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Userid" HeaderText="Userid" InsertVisible="False" ReadOnly="True" SortExpression="Userid" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
            <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
            <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT * FROM [users]" DeleteCommand="DELETE FROM [users] WHERE [Username] = @Username" InsertCommand="INSERT INTO [users] ([FirstName], [LastName], [Phone], [Email], [Username], [Pass], [UserType]) VALUES (@FirstName, @LastName, @Phone, @Email, @Username, @Pass, @UserType)" UpdateCommand="UPDATE [users] SET [Userid] = @Userid, [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Email] = @Email, [Pass] = @Pass, [UserType] = @UserType WHERE [Username] = @Username">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Userid" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <asp:Label ID="Label3" runat="server" Text="ROOMS:" Font-Bold="True"></asp:Label>
    <asp:GridView ID="GridView3" runat="server" AllowSorting="True" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [rooms] WHERE [RoomTypeId] = @RoomTypeId" InsertCommand="INSERT INTO [rooms] ([RoomType], [RoomFloor], [RoomAvailable], [RoomPrice]) VALUES (@RoomType, @RoomFloor, @RoomAvailable, @RoomPrice)" SelectCommand="SELECT * FROM [rooms]" UpdateCommand="UPDATE [rooms] SET [RoomType] = @RoomType, [RoomFloor] = @RoomFloor, [RoomAvailable] = @RoomAvailable, [RoomPrice] = @RoomPrice WHERE [RoomTypeId] = @RoomTypeId">
        <DeleteParameters>
            <asp:Parameter Name="RoomTypeId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="RoomFloor" Type="String" />
            <asp:Parameter Name="RoomAvailable" Type="String" />
            <asp:Parameter Name="RoomPrice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="RoomFloor" Type="String" />
            <asp:Parameter Name="RoomAvailable" Type="String" />
            <asp:Parameter Name="RoomPrice" Type="Int32" />
            <asp:Parameter Name="RoomTypeId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
