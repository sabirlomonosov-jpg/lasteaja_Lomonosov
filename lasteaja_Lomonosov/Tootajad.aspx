
<%@ Page Title="Tootaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tootajad.aspx.cs" Inherits="lasteaja_Lomonosov.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Töötajad</h2>

    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="tootaja_id"
        DataSourceID="SqlDataSource1"
        EmptyDataText="Töötajaid ei ole.">

        <Columns>
            <asp:CommandField
    ShowDeleteButton="True"
    ShowEditButton="True"
    EditText="Muuda"
    DeleteText="Kustuta"
    UpdateText="Salvesta"
    CancelText="Tühista" />

            <asp:BoundField DataField="tootaja_id"
                HeaderText="ID" ReadOnly="True" />

            <asp:BoundField DataField="eesnimi"
                HeaderText="Eesnimi" />

            <asp:BoundField DataField="perenimi"
                HeaderText="Perenimi" />

            <asp:BoundField DataField="isikukood"
                HeaderText="Isikukood" />

            <asp:BoundField DataField="telefon"
                HeaderText="Telefon" />

            <asp:BoundField DataField="e_post"
                HeaderText="E-post" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>"
        ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>"

        SelectCommand="SELECT [tootaja_id], [eesnimi], [perenimi], [isikukood], [telefon], [e_post] FROM [tootajaSet]"

        InsertCommand="INSERT INTO [tootajaSet] ([eesnimi], [perenimi], [isikukood], [telefon], [e_post]) VALUES (@eesnimi, @perenimi, @isikukood, @telefon, @e_post)"

        UpdateCommand="UPDATE [tootajaSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [isikukood] = @isikukood, [telefon] = @telefon, [e_post] = @e_post WHERE [tootaja_id] = @tootaja_id"

        DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootaja_id] = @tootaja_id">

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

    <h2>Lisa töötaja</h2>

    <asp:DetailsView ID="DetailsView1" runat="server"
        DataSourceID="SqlDataSource1"
        DataKeyNames="tootaja_id"
        AutoGenerateRows="False"
        DefaultMode="Insert"
        Width="350px">

        <Fields>
            <asp:BoundField
                DataField="tootaja_id"
                HeaderText="ID"
                InsertVisible="False"
                ReadOnly="True" />

            <asp:BoundField
                DataField="eesnimi"
                HeaderText="Eesnimi" />

            <asp:BoundField
                DataField="perenimi"
                HeaderText="Perenimi" />

            <asp:BoundField
                DataField="isikukood"
                HeaderText="Isikukood" />

            <asp:BoundField
                DataField="telefon"
                HeaderText="Telefon" />

            <asp:BoundField
                DataField="e_post"
                HeaderText="E-post" />

            <asp:CommandField
    ShowInsertButton="True"
    InsertText="Lisa"
    CancelText="Tühista"
    NewText="Uus" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
