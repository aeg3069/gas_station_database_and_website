using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class supplier_delete : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void delete_button_Click(object sender, EventArgs e)
    {
        if (txt_id_number.Text != "")
        {
            string entry = "delete from supplier where supplierId = @txt_id_number ";
            SqlCommand cmd = new SqlCommand(entry, connection);
            connection.Open();

            try
            {
                cmd.Parameters.AddWithValue("@txt_id_number", Convert.ToInt32(txt_id_number.Text));
                cmd.ExecuteNonQuery();
                connection.Close();
                lblResult.Text = " Success...";
            }
            catch (Exception)
            {
                lblResult.Text = " Try Again...";
            }
        }
        else
        {
            lblResult.Text = " Please fill all empty spaces...";
        }

    }
}