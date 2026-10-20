<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tootajad.aspx.cs" Inherits="lasteaja_Lomonosov.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    -<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootaja_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="tootaja_id" HeaderText="tootaja_id" ReadOnly="True" SortExpression="tootaja_id" />
            <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
            <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
            <asp:BoundField DataField="e_post" HeaderText="e_post" SortExpression="e_post" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>" DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootaja_id] = @tootaja_id" InsertCommand="INSERT INTO [tootajaSet] ([eesnimi], [perenimi], [isikukood], [telefon], [e_post]) VALUES (@eesnimi, @perenimi, @isikukood, @telefon, @e_post)" ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>" SelectCommand="SELECT [tootaja_id], [eesnimi], [perenimi], [isikukood], [telefon], [e_post] FROM [tootajaSet]" UpdateCommand="UPDATE [tootajaSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [isikukood] = @isikukood, [telefon] = @telefon, [e_post] = @e_post WHERE [tootaja_id] = @tootaja_id">
        <DeleteParameters>
            <asp:Parameter Name="tootaja_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="perenimi" Type="String" />
            <asp:Parameter Name="isikukood" Type="String" />
            <asp:Parameter Name="telefon" Type="String" />
            <asp:Parameter Name="e_post" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="perenimi" Type="String" />
            <asp:Parameter Name="isikukood" Type="String" />
            <asp:Parameter Name="telefon" Type="String" />
            <asp:Parameter Name="e_post" Type="String" />
            <asp:Parameter Name="tootaja_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h1>Liisa tootaja</h1>
    <asp:DetailsView ID="DetailsView1" runat="server"
    DataSourceID="SqlDataSource1" DataKeyNames="tootajaID"
    AutoGenerateRows="True" DefaultMode="Insert">
    <Fields>
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
    <br />
</asp:Content>
