<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ametikoht.aspx.cs" Inherits="lasteaja_Lomonosov.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <h1>Rühm</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ruhm_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField
    ShowDeleteButton="True"
    ShowEditButton="True"
    EditText="Muuda"
    DeleteText="Kustuta"
    UpdateText="Salvesta"
    CancelText="Tühista" />
                <asp:BoundField DataField="ruhm_id" HeaderText="ruhm_id" ReadOnly="True" SortExpression="ruhm_id" />
                <asp:BoundField DataField="ruhmtyyp_id" HeaderText="ruhmtyyp_id" SortExpression="ruhmtyyp_id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="kohtadetri" HeaderText="kohtadetri" SortExpression="kohtadetri" />
            </Columns>
        </asp:GridView>
        
<asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>"
    SelectCommand="SELECT [ruhm_id], [ruhmtyyp_id], [nimetus], [kohtadetri] FROM [ruhmSet]"
    InsertCommand="INSERT INTO [ruhmSet] ([ruhmtyyp_id], [nimetus], [kohtadetri]) VALUES (@ruhmtyyp_id, @nimetus, @kohtadetri)"
    UpdateCommand="UPDATE [ruhmSet] SET [ruhmtyyp_id] = @ruhmtyyp_id, [nimetus] = @nimetus, [kohtadetri] = @kohtadetri WHERE [ruhm_id] = @ruhm_id"
    DeleteCommand="DELETE FROM [ruhmSet] WHERE [ruhm_id] = @ruhm_id">

    <DeleteParameters>
        <asp:Parameter Name="ruhm_id" Type="Int32" />
    </DeleteParameters>

    <InsertParameters>
        <asp:Parameter Name="ruhmtyyp_id" Type="Int32" />
        <asp:Parameter Name="nimetus" Type="String" />
        <asp:Parameter Name="kohtadetri" Type="String" />
    </InsertParameters>

    <UpdateParameters>
        <asp:Parameter Name="ruhmtyyp_id" Type="Int32" />
        <asp:Parameter Name="nimetus" Type="String" />
        <asp:Parameter Name="kohtadetri" Type="String" />
        <asp:Parameter Name="ruhm_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<asp:SqlDataSource
    ID="SqlDataSourceRuhmTyyp"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    SelectCommand="SELECT [ruhmtyyp_id], [nimetus] FROM [ruhmatyypSet] ORDER BY [nimetus]">
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
        <h1>Liisa ruhm</h1>
    
<asp:DetailsView ID="DetailsView1" runat="server"
    AutoGenerateRows="False"
    DataKeyNames="ruhm_id"
    DataSourceID="SqlDataSource1"
    Height="50px"
    Width="300px"
    DefaultMode="Insert">

    <Fields>
        <asp:BoundField
            DataField="ruhm_id"
            HeaderText="ID"
            InsertVisible="False"
            ReadOnly="True" />

        <asp:TemplateField HeaderText="Rühma tüüp"
            SortExpression="ruhmtyyp_id">

            <ItemTemplate>
                <asp:DropDownList
                    ID="ddlRuhmTyypView"
                    runat="server"
                    DataSourceID="SqlDataSourceRuhmTyyp"
                    DataTextField="nimetus"
                    DataValueField="ruhmtyyp_id"
                    SelectedValue='<%# Eval("ruhmtyyp_id") %>'
                    Enabled="false">
                </asp:DropDownList>
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList
                    ID="ddlRuhmTyypEdit"
                    runat="server"
                    DataSourceID="SqlDataSourceRuhmTyyp"
                    DataTextField="nimetus"
                    DataValueField="ruhmtyyp_id"
                    SelectedValue='<%# Bind("ruhmtyyp_id") %>'>
                </asp:DropDownList>
            </EditItemTemplate>

            <InsertItemTemplate>
                <asp:DropDownList
                    ID="ddlRuhmTyypInsert"
                    runat="server"
                    DataSourceID="SqlDataSourceRuhmTyyp"
                    DataTextField="nimetus"
                    DataValueField="ruhmtyyp_id"
                    SelectedValue='<%# Bind("ruhmtyyp_id") %>'>
                </asp:DropDownList>
            </InsertItemTemplate>

        </asp:TemplateField>

        <asp:BoundField
            DataField="nimetus"
            HeaderText="Nimetus" />

        
<asp:TemplateField HeaderText="Kohtade arv">

    <ItemTemplate>
        <asp:Label ID="lblKohtadeArv" runat="server"
            Text='<%# Eval("kohtadetri") %>' />
    </ItemTemplate>

    <EditItemTemplate>
        <asp:TextBox ID="txtKohtadeArvEdit"
            runat="server"
            TextMode="Number"
            min="0"
            step="1"
            Text='<%# Bind("kohtadetri") %>'>
        </asp:TextBox>
    </EditItemTemplate>

    <InsertItemTemplate>
        <asp:TextBox ID="txtKohtadeArvInsert"
            runat="server"
            TextMode="Number"
            min="0"
            step="1"
            Text='<%# Bind("kohtadetri") %>'>
        </asp:TextBox>
    </InsertItemTemplate>

</asp:TemplateField>


        <asp:CommandField ShowInsertButton="True"
            InsertText="Lisa"
            CancelText="Tühista"
            NewText="Uus" />

    </Fields>
</asp:DetailsView>

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
