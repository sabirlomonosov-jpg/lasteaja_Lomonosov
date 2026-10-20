<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ametikoht.aspx.cs" Inherits="lasteaja_Lomonosov.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        -<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ruhm_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ruhm_id" HeaderText="ruhm_id" ReadOnly="True" SortExpression="ruhm_id" />
                <asp:BoundField DataField="ruhmtyyp_id" HeaderText="ruhmtyyp_id" SortExpression="ruhmtyyp_id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="kohtadetri" HeaderText="kohtadetri" SortExpression="kohtadetri" />
                <asp:BoundField DataField="ruhmatyyp_ruhmtyyp_id" HeaderText="ruhmatyyp_ruhmtyyp_id" SortExpression="ruhmatyyp_ruhmtyyp_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>" DeleteCommand="DELETE FROM [ruhmSet] WHERE [ruhm_id] = @ruhm_id" InsertCommand="INSERT INTO [ruhmSet] ([ruhmtyyp_id], [nimetus], [kohtadetri], [ruhmatyyp_ruhmtyyp_id]) VALUES (@ruhmtyyp_id, @nimetus, @kohtadetri, @ruhmatyyp_ruhmtyyp_id)" ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>" SelectCommand="SELECT [ruhm_id], [ruhmtyyp_id], [nimetus], [kohtadetri], [ruhmatyyp_ruhmtyyp_id] FROM [ruhmSet]" UpdateCommand="UPDATE [ruhmSet] SET [ruhmtyyp_id] = @ruhmtyyp_id, [nimetus] = @nimetus, [kohtadetri] = @kohtadetri, [ruhmatyyp_ruhmtyyp_id] = @ruhmatyyp_ruhmtyyp_id WHERE [ruhm_id] = @ruhm_id">
            <DeleteParameters>
                <asp:Parameter Name="ruhm_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ruhmtyyp_id" Type="Int32" />
                <asp:Parameter Name="nimetus" Type="String" />
                <asp:Parameter Name="kohtadetri" Type="String" />
                <asp:Parameter Name="ruhmatyyp_ruhmtyyp_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ruhmtyyp_id" Type="Int32" />
                <asp:Parameter Name="nimetus" Type="String" />
                <asp:Parameter Name="kohtadetri" Type="String" />
                <asp:Parameter Name="ruhmatyyp_ruhmtyyp_id" Type="Int32" />
                <asp:Parameter Name="ruhm_id" Type="Int32" />
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
        <h1>Liisa ruhm</h1></p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ruhm_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="ruhm_id" HeaderText="ruhm_id" InsertVisible="False" ReadOnly="True" SortExpression="ruhm_id" />
                <asp:BoundField DataField="ruhmtyyp_id" HeaderText="ruhmtyyp_id" SortExpression="ruhmtyyp_id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="kohtadetri" HeaderText="kohtadetri" SortExpression="kohtadetri" />
                <asp:BoundField DataField="ruhmatyyp_ruhmtyyp_id" HeaderText="ruhmatyyp_ruhmtyyp_id" SortExpression="ruhmatyyp_ruhmtyyp_id" />
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
