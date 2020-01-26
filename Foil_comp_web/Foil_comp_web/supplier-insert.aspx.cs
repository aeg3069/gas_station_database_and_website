using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class supplier_insert : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insert_button_Click(object sender, EventArgs e)
    {
        if (txt_id_number.Text != "")
        {
            string entry = "insert into supplier(supplierId,supplier_location) Values(@txt_id_number,@txt_location)";
            SqlCommand cmd = new SqlCommand(entry, connection);
            connection.Open();

            try
            {
                cmd.Parameters.AddWithValue("@txt_id_number", Convert.ToInt32(txt_id_number.Text));
                cmd.Parameters.AddWithValue("@txt_location", txt_location.Text);
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