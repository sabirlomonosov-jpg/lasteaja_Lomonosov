<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ametikoht.aspx.cs" Inherits="lasteaja_Lomonosov.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    -<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ruhmtyyp_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ruhmtyyp_id" HeaderText="ruhmtyyp_id" ReadOnly="True" SortExpression="ruhmtyyp_id" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>" DeleteCommand="DELETE FROM [ruhmatyypSet] WHERE [ruhmtyyp_id] = @ruhmtyyp_id" InsertCommand="INSERT INTO [ruhmatyypSet] ([nimetus]) VALUES (@nimetus)" ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>" SelectCommand="SELECT [ruhmtyyp_id], [nimetus] FROM [ruhmatyypSet]" UpdateCommand="UPDATE [ruhmatyypSet] SET [nimetus] = @nimetus WHERE [ruhmtyyp_id] = @ruhmtyyp_id">
        <DeleteParameters>
            <asp:Parameter Name="ruhmtyyp_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimetus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="ruhmtyyp_id" Type="Int32" />
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
    <h1>Liisa rühm tüüp</h1>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ruhmtyyp_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="ruhmtyyp_id" HeaderText="ruhmtyyp_id" InsertVisible="False" ReadOnly="True" SortExpression="ruhmtyyp_id" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
<p>
    &nbsp;</p>
</asp:Content>
