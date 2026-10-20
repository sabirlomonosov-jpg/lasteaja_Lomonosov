<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ametikoht.aspx.cs" Inherits="lasteaja_Lomonosov.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        -<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ametikoht_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ametikoht_id" HeaderText="ametikoht_id" ReadOnly="True" SortExpression="ametikoht_id" />
                <asp:BoundField DataField="ruhm_id" HeaderText="ruhm_id" SortExpression="ruhm_id" />
                <asp:BoundField DataField="ametikohttyyp_id" HeaderText="ametikohttyyp_id" SortExpression="ametikohttyyp_id" />
                <asp:BoundField DataField="ametikoht_nimi" HeaderText="ametikoht_nimi" SortExpression="ametikoht_nimi" />
                <asp:BoundField DataField="ametikohttyyp_ametikohttyyp_id" HeaderText="ametikohttyyp_ametikohttyyp_id" SortExpression="ametikohttyyp_ametikohttyyp_id" />
                <asp:BoundField DataField="ruhm_ruhm_id" HeaderText="ruhm_ruhm_id" SortExpression="ruhm_ruhm_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>" DeleteCommand="DELETE FROM [ametikohtSet] WHERE [ametikoht_id] = @ametikoht_id" InsertCommand="INSERT INTO [ametikohtSet] ([ruhm_id], [ametikohttyyp_id], [ametikoht_nimi], [ametikohttyyp_ametikohttyyp_id], [ruhm_ruhm_id]) VALUES (@ruhm_id, @ametikohttyyp_id, @ametikoht_nimi, @ametikohttyyp_ametikohttyyp_id, @ruhm_ruhm_id)" ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>" SelectCommand="SELECT [ametikoht_id], [ruhm_id], [ametikohttyyp_id], [ametikoht_nimi], [ametikohttyyp_ametikohttyyp_id], [ruhm_ruhm_id] FROM [ametikohtSet]" UpdateCommand="UPDATE [ametikohtSet] SET [ruhm_id] = @ruhm_id, [ametikohttyyp_id] = @ametikohttyyp_id, [ametikoht_nimi] = @ametikoht_nimi, [ametikohttyyp_ametikohttyyp_id] = @ametikohttyyp_ametikohttyyp_id, [ruhm_ruhm_id] = @ruhm_ruhm_id WHERE [ametikoht_id] = @ametikoht_id">
            <DeleteParameters>
                <asp:Parameter Name="ametikoht_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ruhm_id" Type="Int32" />
                <asp:Parameter Name="ametikohttyyp_id" Type="Int32" />
                <asp:Parameter Name="ametikoht_nimi" Type="String" />
                <asp:Parameter Name="ametikohttyyp_ametikohttyyp_id" Type="Int32" />
                <asp:Parameter Name="ruhm_ruhm_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ruhm_id" Type="Int32" />
                <asp:Parameter Name="ametikohttyyp_id" Type="Int32" />
                <asp:Parameter Name="ametikoht_nimi" Type="String" />
                <asp:Parameter Name="ametikohttyyp_ametikohttyyp_id" Type="Int32" />
                <asp:Parameter Name="ruhm_ruhm_id" Type="Int32" />
                <asp:Parameter Name="ametikoht_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <h1>Liisa ametikoht</h1>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ametikoht_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="ametikoht_id" HeaderText="ametikoht_id" InsertVisible="False" ReadOnly="True" SortExpression="ametikoht_id" />
                <asp:BoundField DataField="ruhm_id" HeaderText="ruhm_id" SortExpression="ruhm_id" />
                <asp:BoundField DataField="ametikohttyyp_id" HeaderText="ametikohttyyp_id" SortExpression="ametikohttyyp_id" />
                <asp:BoundField DataField="ametikoht_nimi" HeaderText="ametikoht_nimi" SortExpression="ametikoht_nimi" />
                <asp:BoundField DataField="ametikohttyyp_ametikohttyyp_id" HeaderText="ametikohttyyp_ametikohttyyp_id" SortExpression="ametikohttyyp_ametikohttyyp_id" />
                <asp:BoundField DataField="ruhm_ruhm_id" HeaderText="ruhm_ruhm_id" SortExpression="ruhm_ruhm_id" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
