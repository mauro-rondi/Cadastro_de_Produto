using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waProduto
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCadastrar_Click(object sender, EventArgs e)
        {
            if (txbNome.Text != "" && txbQuantidade.Text != "" && txbValor.Text != "")
             {
                decimal valorDinheiro;
                if (decimal.TryParse(txbValor.Text, NumberStyles.Currency, CultureInfo.GetCultureInfo("pt-BR"), out valorDinheiro))
                {
                    // O valor é válido como dinheiro (decimal).
                    // Faça o que desejar com o valor, como salvar em um banco de dados ou realizar cálculos.
                    //capturar a string de conexão
                    System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
                    System.Configuration.ConnectionStringSettings connSring;
                    connSring = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
                    //cria um objeto de conexão
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = connSring.ToString();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "Insert into Produto (nome,quantidade,valor) values (@nome,@quantidade,@valor)";
                    cmd.Parameters.AddWithValue("nome", txbNome.Text);
                    cmd.Parameters.AddWithValue("quantidade", txbQuantidade.Text);
                    cmd.Parameters.AddWithValue("valor", txbValor.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    // Especifique o URL da página web para a qual deseja redirecionar o usuário.
                    string urlDestino = "~/Tabela.aspx";

                    // Redirecione o usuário para o URL especificado.
                    Response.Redirect(urlDestino);
                }
                else
                {
                    // Exiba uma mensagem de erro informando que o valor não é válido.
                    Response.Write("<script> alert('[ERRO!] Insira um valor em dinheiro!'); </script>");
                }
            }
            else
            {
                Response.Write("<script> alert('[ERRO!] Campos em Branco'); </script>");
                //lMsg.Text = "[ERRO!] Campos em Branco!";
            }
        }
    }
}