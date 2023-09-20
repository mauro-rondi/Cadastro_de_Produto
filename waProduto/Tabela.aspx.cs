using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waProduto
{
    public partial class Tabela : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSourceTabela_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
   
        }

        protected void SqlDataSourceTabela_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                Response.Write("<script> alert('[ERRO!] Campos em Branco'); </script>");
                e.ExceptionHandled = true;
            }
        }
    }
}