<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tootmine.aspx.cs" Inherits="lasteaja_Lomonosov._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
        <h1>Tootmine</h1>
        
<asp:GridView ID="GridView1" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="tootmine_id"
    DataSourceID="SqlDataSource1"
    EmptyDataText="Andmed puuduvad.">

    <Columns>
        <asp:CommandField
            ShowDeleteButton="True"
            ShowEditButton="True"
            EditText="Muuda"
            DeleteText="Kustuta"
            UpdateText="Salvesta"
            CancelText="Tühista" />

        <asp:BoundField
            DataField="tootmine_id"
            HeaderText="ID"
            ReadOnly="True" />

        <asp:TemplateField HeaderText="Ametikoht">
            <ItemTemplate>
                <asp:Label ID="lblAmetikoht" runat="server"
                    Text='<%# Eval("ametikoht_nimi") %>' />
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList ID="ddlAmetikohtGrid"
                    runat="server"
                    DataSourceID="SqlDataSourceAmetikoht"
                    DataTextField="ametikoht_nimi"
                    DataValueField="ametikoht_id"
                    SelectedValue='<%# Bind("ametikoht_id") %>'>
                </asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:BoundField
            DataField="alguse_kp"
            HeaderText="Alguse kuupäev"
            DataFormatString="{0:yyyy-MM-dd}"
            ApplyFormatInEditMode="True" />

        <asp:BoundField
            DataField="lopu_kp"
            HeaderText="Lõpu kuupäev"
            DataFormatString="{0:yyyy-MM-dd}"
            ApplyFormatInEditMode="True" />

        <asp:TemplateField HeaderText="Töötaja">
            <ItemTemplate>
                <asp:Label ID="lblTootaja" runat="server"
                    Text='<%# Eval("taisnimi") %>' />
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList ID="ddlTootajaGrid"
                    runat="server"
                    DataSourceID="SqlDataSourceTootaja"
                    DataTextField="taisnimi"
                    DataValueField="tootaja_id"
                    SelectedValue='<%# Bind("tootaja_id") %>'>
                </asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>

    </Columns>
</asp:GridView>

        
<asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>"
    
SelectCommand="
SELECT
    t.[tootmine_id],
    t.[ametikoht_id],
    a.[ametikoht_nimi],
    t.[alguse_kp],
    t.[lopu_kp],
    t.[tootaja_id],
    CONCAT(tj.[eesnimi], ' ', tj.[perenimi]) AS [taisnimi]
FROM [tootmineSet] AS t
LEFT JOIN [ametikohtSet] AS a
    ON t.[ametikoht_id] = a.[ametikoht_id]
LEFT JOIN [tootajaSet] AS tj
    ON t.[tootaja_id] = tj.[tootaja_id]"

    InsertCommand="INSERT INTO [tootmineSet] ([ametikoht_id], [alguse_kp], [lopu_kp], [tootaja_id]) VALUES (@ametikoht_id, @alguse_kp, @lopu_kp, @tootaja_id)"
    UpdateCommand="UPDATE [tootmineSet] SET [ametikoht_id] = @ametikoht_id, [alguse_kp] = @alguse_kp, [lopu_kp] = @lopu_kp, [tootaja_id] = @tootaja_id WHERE [tootmine_id] = @tootmine_id"
    DeleteCommand="DELETE FROM [tootmineSet] WHERE [tootmine_id] = @tootmine_id">

    <DeleteParameters>
        <asp:Parameter Name="tootmine_id" Type="Int32" />
    </DeleteParameters>

    <InsertParameters>
        <asp:Parameter Name="ametikoht_id" Type="Int32" />
        <asp:Parameter Name="alguse_kp" DbType="Date" />
        <asp:Parameter Name="lopu_kp" DbType="Date" />
        <asp:Parameter Name="tootaja_id" Type="Int32" />
    </InsertParameters>

    <UpdateParameters>
        <asp:Parameter Name="ametikoht_id" Type="Int32" />
        <asp:Parameter Name="alguse_kp" DbType="Date" />
        <asp:Parameter Name="lopu_kp" DbType="Date" />
        <asp:Parameter Name="tootaja_id" Type="Int32" />
        <asp:Parameter Name="tootmine_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<asp:SqlDataSource
    ID="SqlDataSourceAmetikoht"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    SelectCommand="SELECT [ametikoht_id], [ametikoht_nimi] FROM [ametikohtSet] ORDER BY [ametikoht_nimi]">
</asp:SqlDataSource>

<asp:SqlDataSource
    ID="SqlDataSourceTootaja"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
    SelectCommand="SELECT [tootaja_id], CONCAT([eesnimi], ' ', [perenimi]) AS [taisnimi] FROM [tootajaSet] ORDER BY [eesnimi], [perenimi]">
</asp:SqlDataSource>

    </p>
    <p>
        &nbsp;</p>
        <h1>Liisa tootmine</h1>
    
<asp:DetailsView ID="DetailsView1" runat="server"
    AutoGenerateRows="False"
    DataKeyNames="tootmine_id"
    DataSourceID="SqlDataSource1"
    Height="50px"
    Width="300px"
    DefaultMode="Insert">

    <Fields>
        <asp:BoundField
            DataField="tootmine_id"
            HeaderText="ID"
            InsertVisible="False"
            ReadOnly="True" />

        <asp:TemplateField HeaderText="Ametikoht">
            <ItemTemplate>
                <asp:DropDownList ID="ddlAmetikohtView" runat="server"
                    DataSourceID="SqlDataSourceAmetikoht"
                    DataTextField="ametikoht_nimi"
                    DataValueField="ametikoht_id"
                    SelectedValue='<%# Eval("ametikoht_id") %>'
                    Enabled="false" />
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList ID="ddlAmetikohtEdit" runat="server"
                    DataSourceID="SqlDataSourceAmetikoht"
                    DataTextField="ametikoht_nimi"
                    DataValueField="ametikoht_id"
                    SelectedValue='<%# Bind("ametikoht_id") %>' />
            </EditItemTemplate>

            <InsertItemTemplate>
                <asp:DropDownList ID="ddlAmetikohtInsert" runat="server"
                    DataSourceID="SqlDataSourceAmetikoht"
                    DataTextField="ametikoht_nimi"
                    DataValueField="ametikoht_id"
                    SelectedValue='<%# Bind("ametikoht_id") %>' />
            </InsertItemTemplate>
        </asp:TemplateField>

        
<asp:TemplateField HeaderText="Alguse kuupäev">
    <ItemTemplate>
        <asp:Label ID="lblAlguse" runat="server"
            Text='<%# Eval("alguse_kp", "{0:yyyy-MM-dd}") %>' />
    </ItemTemplate>

    <EditItemTemplate>
        <asp:TextBox ID="txtAlguseEdit" runat="server"
            TextMode="Date"
            Text='<%# Bind("alguse_kp", "{0:yyyy-MM-dd}") %>'>
        </asp:TextBox>
    </EditItemTemplate>

    <InsertItemTemplate>
        <asp:TextBox ID="txtAlguseInsert" runat="server"
            TextMode="Date"
            Text='<%# Bind("alguse_kp", "{0:yyyy-MM-dd}") %>'>
        </asp:TextBox>
    </InsertItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Lõpu kuupäev">
    <ItemTemplate>
        <asp:Label ID="lblLopu" runat="server"
            Text='<%# Eval("lopu_kp", "{0:yyyy-MM-dd}") %>' />
    </ItemTemplate>

    <EditItemTemplate>
        <asp:TextBox ID="txtLopuEdit" runat="server"
            TextMode="Date"
            Text='<%# Bind("lopu_kp", "{0:yyyy-MM-dd}") %>'>
        </asp:TextBox>
    </EditItemTemplate>

    <InsertItemTemplate>
        <asp:TextBox ID="txtLopuInsert" runat="server"
            TextMode="Date"
            Text='<%# Bind("lopu_kp", "{0:yyyy-MM-dd}") %>'>
        </asp:TextBox>
    </InsertItemTemplate>
</asp:TemplateField>


        <asp:TemplateField HeaderText="Töötaja">
            <ItemTemplate>
                <asp:DropDownList ID="ddlTootajaView" runat="server"
                    DataSourceID="SqlDataSourceTootaja"
                    DataTextField="taisnimi"
                    DataValueField="tootaja_id"
                    SelectedValue='<%# Eval("tootaja_id") %>'
                    Enabled="false" />
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList ID="ddlTootajaEdit" runat="server"
                    DataSourceID="SqlDataSourceTootaja"
                    DataTextField="taisnimi"
                    DataValueField="tootaja_id"
                    SelectedValue='<%# Bind("tootaja_id") %>' />
            </EditItemTemplate>

            <InsertItemTemplate>
                <asp:DropDownList ID="ddlTootajaInsert" runat="server"
                    DataSourceID="SqlDataSourceTootaja"
                    DataTextField="taisnimi"
                    DataValueField="tootaja_id"
                    SelectedValue='<%# Bind("tootaja_id") %>' />
            </InsertItemTemplate>
        </asp:TemplateField>

        <asp:CommandField
    ShowInsertButton="True"
    InsertText="Lisa"
    CancelText="Tühista"
    NewText="Uus" />
    </Fields>
</asp:DetailsView>

    </p>
</asp:Content>
