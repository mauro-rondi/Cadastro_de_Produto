<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="waProduto.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <div id="lCadastro">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" Text="Cadastro de Produto"></asp:Label>
    </div>
</p>
    <br />
    <div class="tipsForm" id="tipsForm">
            <span id="formInput">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                <asp:TextBox ID="txbNome" runat="server" CssClass="txbInput" Width="170px" placeholder="Teclado"></asp:TextBox>
            </span>
            <br />
            <br />
            <span >
                <asp:Label ID="Label2" runat="server" Text="Quantidade:"></asp:Label>
                <asp:TextBox ID="txbQuantidade" runat="server" type="number" placeholder="100">
                    <script type ="text/javascript">
                        function isNumber(event) {
                            var charCode = (event.which) ? event.which : event.keyCode;
                            if (charCode > 31 && (charCode < 48 || charCode > 57))
                                return false;
                            return true;
                        }
                    </script>
                </asp:TextBox>
            </span>
            <br />
            <br />
            <span id="formInput">
                <asp:Label ID="lValor" runat="server" Text="Valor:"></asp:Label>
                <asp:TextBox ID="txbValor" runat="server" CssClass="txbEntrada" placeholder="0,00"></asp:TextBox>
            </span>
            <br />
            <br />
            <div>
                <asp:Button ID="btCadastrar" runat="server" CssClass="formSubmit" OnClick="btCadastrar_Click" Text="CADASTRAR" />
            </div>
    <asp:Label ID="lMsg" runat="server" BackColor="White" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <br />
</p>
</asp:Content>
