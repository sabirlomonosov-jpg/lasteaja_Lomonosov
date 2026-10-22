<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ametikoht.aspx.cs" Inherits="lasteaja_Lomonosov.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <h1>Ametikoht</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ametikoht_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField
    ShowDeleteButton="True"
    ShowEditButton="True"
    EditText="Muuda"
    DeleteText="Kustuta"
    UpdateText="Salvesta"
    CancelText="Tühista" />
                <asp:BoundField DataField="ametikoht_id" HeaderText="ametikoht_id" ReadOnly="True" SortExpression="ametikoht_id" />
                <asp:BoundField DataField="ruhm_id" HeaderText="ruhm_id" SortExpression="ruhm_id" />
                <asp:BoundField DataField="ametikohttyyp_id" HeaderText="ametikohttyyp_id" SortExpression="ametikohttyyp_id" />
                <asp:BoundField DataField="ametikoht_nimi" HeaderText="ametikoht_nimi" SortExpression="ametikoht_nimi" />
            </Columns>
        </asp:GridView>
        
<asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>"
    SelectCommand="SELECT [ametikoht_id], [ruhm_id], [ametikohttyyp_id], [ametikoht_nimi] FROM [ametikohtSet]"
    InsertCommand="INSERT INTO [ametikohtSet] ([ruhm_id], [ametikohttyyp_id], [ametikoht_nimi]) VALUES (@ruhm_id, @ametikohttyyp_id, @ametikoht_nimi)"
    UpdateCommand="UPDATE [ametikohtSet] SET [ruhm_id] = @ruhm_id, [ametikohttyyp_id] = @ametikohttyyp_id, [ametikoht_nimi] = @ametikoht_nimi WHERE [ametikoht_id] = @ametikoht_id"
    DeleteCommand="DELETE FROM [ametikohtSet] WHERE [ametikoht_id] = @ametikoht_id">

    <DeleteParameters>
        <asp:Parameter Name="ametikoht_id" Type="Int32" />
    </DeleteParameters>

    <InsertParameters>
        <asp:Parameter Name="ruhm_id" Type="Int32" />
        <asp:Parameter Name="ametikohttyyp_id" Type="Int32" />
        <asp:Parameter Name="ametikoht_nimi" Type="String" />
    </InsertParameters>

    <UpdateParameters>
        <asp:Parameter Name="ruhm_id" Type="Int32" />
        <asp:Parameter Name="ametikohttyyp_id" Type="Int32" />
        <asp:Parameter Name="ametikoht_nimi" Type="String" />
        <asp:Parameter Name="ametikoht_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<asp:SqlDataSource
    ID="SqlDataSourceRuhm"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    SelectCommand="SELECT [ruhm_id], [nimetus] FROM [ruhmSet] ORDER BY [nimetus]">
</asp:SqlDataSource>

<asp:SqlDataSource
    ID="SqlDataSourceAmetikohtTyyp"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    SelectCommand="SELECT [ametikohttyyp_id], [nimetus] FROM [ametikohttyypSet] ORDER BY [nimetus]">
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
        
<asp:DetailsView ID="DetailsView1" runat="server"
    AutoGenerateRows="False"
    DataKeyNames="ametikoht_id"
    DataSourceID="SqlDataSource1"
    Height="50px"
    Width="300px"
    DefaultMode="Insert">

    <Fields>
        <asp:BoundField
            DataField="ametikoht_id"
            HeaderText="ID"
            InsertVisible="False"
            ReadOnly="True" />

        <asp:TemplateField HeaderText="Rühm">
            <ItemTemplate>
                <asp:DropDownList ID="ddlRuhmView" runat="server"
                    DataSourceID="SqlDataSourceRuhm"
                    DataTextField="nimetus"
                    DataValueField="ruhm_id"
                    SelectedValue='<%# Eval("ruhm_id") %>'
                    Enabled="false">
                </asp:DropDownList>
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList ID="ddlRuhmEdit" runat="server"
                    DataSourceID="SqlDataSourceRuhm"
                    DataTextField="nimetus"
                    DataValueField="ruhm_id"
                    SelectedValue='<%# Bind("ruhm_id") %>'>
                </asp:DropDownList>
            </EditItemTemplate>

            <InsertItemTemplate>
                <asp:DropDownList ID="ddlRuhmInsert" runat="server"
                    DataSourceID="SqlDataSourceRuhm"
                    DataTextField="nimetus"
                    DataValueField="ruhm_id"
                    SelectedValue='<%# Bind("ruhm_id") %>'>
                </asp:DropDownList>
            </InsertItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Ametikoha tüüp">
            <ItemTemplate>
                <asp:DropDownList ID="ddlTyypView" runat="server"
                    DataSourceID="SqlDataSourceAmetikohtTyyp"
                    DataTextField="nimetus"
                    DataValueField="ametikohttyyp_id"
                    SelectedValue='<%# Eval("ametikohttyyp_id") %>'
                    Enabled="false">
                </asp:DropDownList>
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList ID="ddlTyypEdit" runat="server"
                    DataSourceID="SqlDataSourceAmetikohtTyyp"
                    DataTextField="nimetus"
                    DataValueField="ametikohttyyp_id"
                    SelectedValue='<%# Bind("ametikohttyyp_id") %>'>
                </asp:DropDownList>
            </EditItemTemplate>

            <InsertItemTemplate>
                <asp:DropDownList ID="ddlTyypInsert" runat="server"
                    DataSourceID="SqlDataSourceAmetikohtTyyp"
                    DataTextField="nimetus"
                    DataValueField="ametikohttyyp_id"
                    SelectedValue='<%# Bind("ametikohttyyp_id") %>'>
                </asp:DropDownList>
            </InsertItemTemplate>
        </asp:TemplateField>

        <asp:BoundField
            DataField="ametikoht_nimi"
            HeaderText="Ametikoha nimi" />

        <asp:CommandField ShowInsertButton="True"
            InsertText="Lisa"
            CancelText="Tühista"
            NewText="Uus" />

    </Fields>
</asp:DetailsView>

    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
