using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 /*   protected void register_button_Click(object sender, EventArgs e)
    {

        if (txt_id_number.Text != "" && txt_password.Text != "")
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string entry = "insert into foil_card (customerId,vehicle_plate,number_of_credits,given_date,last_update_time,password) Values(@txt_id_number,@txt_plate,0,getdate(),getdate(),@txt_password)";
            SqlCommand cmd = new SqlCommand(entry, connection);
            connection.Open();

            try
            {
                cmd.Parameters.AddWithValue("@txt_id_number", txt_id_number.Text);
                cmd.Parameters.AddWithValue("@txt_plate", txt_plate.Text);
                cmd.Parameters.AddWithValue("@txt_password", txt_password.Text);

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



    }*/
}
