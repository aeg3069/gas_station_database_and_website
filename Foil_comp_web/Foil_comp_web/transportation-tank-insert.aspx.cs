using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transportation_tank_insert : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack == false)
        {
            string dbConnectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            string sqlstr = "select tankId from transportation_tank ";
            var dbConnection = new SqlConnection(dbConnectionStr);
            var dataAdapter = new SqlDataAdapter(sqlstr, dbConnection);
            var commandBuilder = new SqlCommandBuilder(dataAdapter);
            var ds = new DataSet();
            dataAdapter.Fill(ds);



            ddl_tank.DataTextField = ds.Tables[0].Columns["tankId"].ToString();
            ddl_tank.DataSource = ds.Tables[0];
            ddl_tank.DataBind();
            ddl_tank.SelectedIndex = -1;
            ddl_tank.Items.Insert(0, new ListItem("Please Select", String.Empty));
            //////////////////////////////////////////////////////
            ///


            string sqlstr1 = "select supplierId from transportation_tank ";
            var dbConnection1 = new SqlConnection(dbConnectionStr);
            var dataAdapter1 = new SqlDataAdapter(sqlstr1, dbConnection1);
            var commandBuilder1 = new SqlCommandBuilder(dataAdapter1);
            var ds1 = new DataSet();
            dataAdapter1.Fill(ds1);



            ddl_suplier.DataTextField = ds1.Tables[0].Columns["supplierId"].ToString();
            ddl_suplier.DataSource = ds1.Tables[0];
            ddl_suplier.DataBind();
            ddl_suplier.SelectedIndex = -1;
            ddl_suplier.Items.Insert(0, new ListItem("Please Select", String.Empty));



        }

    }

    protected void register_button_Click(object sender, EventArgs e)
    {

        if (txt_id_number.Text != "")
        {
       
            string entry = "insert into transportation_tank (transportId,tankId,supplierId,fuel_type_trans,capacity_lt_trans,cost_of_liter) Values(@txt_id_number,@tank_id,@supplier_id,'oil',1000,5)";
            SqlCommand cmd = new SqlCommand(entry, connection);
            connection.Open();

            try
            {
                cmd.Parameters.AddWithValue("@txt_id_number", Convert.ToInt64(txt_id_number.Text));
                cmd.Parameters.AddWithValue("@tank_id", ddl_tank.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@supplier_id", ddl_suplier.SelectedItem.Value);


                cmd.ExecuteNonQuery();
                connection.Close();
                lblResult.Text = " Success...";
            }
            catch (Exception) {
                lblResult.Text = " Please try again ...";

            }
        }
        else
        {
            lblResult.Text = " Please fill all empty spaces...";
        }



    }

}