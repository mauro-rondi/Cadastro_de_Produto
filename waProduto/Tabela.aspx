<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Tabela.aspx.cs" Inherits="waProduto.Tabela" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <div id="lTabela">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Tabela de Produtos"></asp:Label>
        </div>
    <br aria-required="True" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSourceTabela" Height="232px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="360px" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="quantidade" HeaderText="quantidade" SortExpression="quantidade" />
            <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#56d332" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    &nbsp;<asp:SqlDataSource ID="SqlDataSourceTabela" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produto] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produto] ([nome], [quantidade], [valor]) VALUES (@nome, @quantidade, @valor)" SelectCommand="SELECT * FROM [Produto]" UpdateCommand="UPDATE [Produto] SET [nome] = @nome, [quantidade] = @quantidade, [valor] = @valor WHERE [Id] = @Id" OnInserted="SqlDataSourceTabela_Inserted" OnUpdated="SqlDataSourceTabela_Updated">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="quantidade" Type="String" />
            <asp:Parameter Name="valor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="quantidade" Type="String" />
            <asp:Parameter Name="valor" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
