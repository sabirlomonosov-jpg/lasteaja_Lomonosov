<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tootmine.aspx.cs" Inherits="lasteaja_Lomonosov._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
        -<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootmine_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="tootmine_id" HeaderText="tootmine_id" ReadOnly="True" SortExpression="tootmine_id" />
                <asp:BoundField DataField="ametikoht_id" HeaderText="ametikoht_id" SortExpression="ametikoht_id" />
                <asp:BoundField DataField="alguse_kp" HeaderText="alguse_kp" SortExpression="alguse_kp" />
                <asp:BoundField DataField="lopu_kp" HeaderText="lopu_kp" SortExpression="lopu_kp" />
                <asp:BoundField DataField="tootaja_id" HeaderText="tootaja_id" SortExpression="tootaja_id" />
                <asp:BoundField DataField="tootaja_tootaja_id" HeaderText="tootaja_tootaja_id" SortExpression="tootaja_tootaja_id" />
                <asp:BoundField DataField="ametikoht_ametikoht_id" HeaderText="ametikoht_ametikoht_id" SortExpression="ametikoht_ametikoht_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1 %>" DeleteCommand="DELETE FROM [tootmineSet] WHERE [tootmine_id] = @tootmine_id" InsertCommand="INSERT INTO [tootmineSet] ([ametikoht_id], [alguse_kp], [lopu_kp], [tootaja_id], [tootaja_tootaja_id], [ametikoht_ametikoht_id]) VALUES (@ametikoht_id, @alguse_kp, @lopu_kp, @tootaja_id, @tootaja_tootaja_id, @ametikoht_ametikoht_id)" ProviderName="<%$ ConnectionStrings:Lasteaja_LomonosovConnectionString1.ProviderName %>" SelectCommand="SELECT [tootmine_id], [ametikoht_id], [alguse_kp], [lopu_kp], [tootaja_id], [tootaja_tootaja_id], [ametikoht_ametikoht_id] FROM [tootmineSet]" UpdateCommand="UPDATE [tootmineSet] SET [ametikoht_id] = @ametikoht_id, [alguse_kp] = @alguse_kp, [lopu_kp] = @lopu_kp, [tootaja_id] = @tootaja_id, [tootaja_tootaja_id] = @tootaja_tootaja_id, [ametikoht_ametikoht_id] = @ametikoht_ametikoht_id WHERE [tootmine_id] = @tootmine_id">
            <DeleteParameters>
                <asp:Parameter Name="tootmine_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ametikoht_id" Type="Int32" />
                <asp:Parameter Name="alguse_kp" Type="DateTime" />
                <asp:Parameter Name="lopu_kp" Type="DateTime" />
                <asp:Parameter Name="tootaja_id" Type="Int32" />
                <asp:Parameter Name="tootaja_tootaja_id" Type="Int32" />
                <asp:Parameter Name="ametikoht_ametikoht_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ametikoht_id" Type="Int32" />
                <asp:Parameter Name="alguse_kp" Type="DateTime" />
                <asp:Parameter Name="lopu_kp" Type="DateTime" />
                <asp:Parameter Name="tootaja_id" Type="Int32" />
                <asp:Parameter Name="tootaja_tootaja_id" Type="Int32" />
                <asp:Parameter Name="ametikoht_ametikoht_id" Type="Int32" />
                <asp:Parameter Name="tootmine_id" Type="Int32" />
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
        <h1>Liisa tootmine</h1>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="166px" DefaultMode="Insert">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </p>
</asp:Content>
