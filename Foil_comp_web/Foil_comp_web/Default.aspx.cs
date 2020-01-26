using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string current_plate = "";
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {


        if (IsPostBack == false)
        {
            string dbConnectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            string sqlstr = "select vehicle_plate from foil_card ";
            var dbConnection = new SqlConnection(dbConnectionStr);
            var dataAdapter = new SqlDataAdapter(sqlstr, dbConnection);
            var commandBuilder = new SqlCommandBuilder(dataAdapter);
            var ds = new DataSet();
            dataAdapter.Fill(ds);



            ddl_plate.DataTextField = ds.Tables[0].Columns["vehicle_plate"].ToString();
            ddl_plate.DataSource = ds.Tables[0];
            ddl_plate.DataBind();
            ddl_plate.SelectedIndex = -1;
            ddl_plate.Items.Insert(0, new ListItem("Please Select", String.Empty));

    

        }


        object user = Session["vehicle_plate"];
        if (user != null) {
            bringContents();
            pnl_signed_in.Visible = true;
            pnl_sign_in.Visible = false;
          //  Panel1.Visible = true;

          //  user_plate.Text = user.ToString();
            


        }
        else {

           
            pnl_signed_in.Visible = false;
            pnl_sign_in.Visible = true;
         //   Panel1.Visible = false;

        }

    }

    protected void register_button_Click(object sender, EventArgs e)
    {

        if (txt_id_number.Text != "" && txt_password.Text != "")
        {
            string entry = "insert into foil_card (customerId,vehicle_plate,number_of_credits,given_date,last_update_time,password) Values(@txt_id_number,@txt_plate,0,getdate(),getdate(),@txt_password)";
            SqlCommand cmd = new SqlCommand(entry, connection);
            connection.Open();

            try
            {
                cmd.Parameters.AddWithValue("@txt_id_number", txt_id_number.Text);
                cmd.Parameters.AddWithValue("@txt_plate", ddl_plate.SelectedItem);
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



    }

    protected void sign_in_button_Click(object sender, EventArgs e)
    {
        string entry = "Select * from foil_card where customerId = @txt_id_number AND vehicle_plate = @txt_plate AND password = @txt_password";
        SqlCommand cmd = new SqlCommand(entry, connection);
       

        cmd.Parameters.AddWithValue("@txt_id_number", txt_id_number.Text);
        //   cmd.Parameters.Add("@txt_plate", ddl_plate.SelectedItem.Value);
    
        cmd.Parameters.Add("@txt_plate", ddl_plate.SelectedItem.Value);

        cmd.Parameters.AddWithValue("@txt_password", txt_password.Text);
            connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("vehicle_plate",dr["vehicle_plate"].ToString());
            Response.Redirect(Request.RawUrl);

            }
            else {
                lblResult.Text =("Unsuccess");
            }
            //cmd.ExecuteNonQuery();
            connection.Close();
         
        
       

    }

    protected void sign_out_button_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.RawUrl);
    }
    
    protected void bringContents() {
        
        string entry = "Select * from foil_card where vehicle_plate = @txt_plate ";
       
        connection.Open();
        SqlCommand cmd = new SqlCommand(entry, connection);
        cmd.Parameters.Add("@txt_plate", ddl_plate.SelectedItem.Value);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);


        connection.Close();


    }



   
}
