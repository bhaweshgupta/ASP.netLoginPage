using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

namespace LoginPage
{
    public partial class Registration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string sqlCommandstring = "select count(*) from UserDataTable where UserName='"+txtboxUserName.Text+"'";
                SqlCommand cmd = new SqlCommand(sqlCommandstring,con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                Response.Write(temp);
                
                if (temp==1 )
                {
                    Response.Write("user Already Exist");
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID =Guid.NewGuid();

                
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string insertQuery = "Insert into UserDataTable(ID,UserName,Email,Password,Country) values (@ID,@Uname,@email,@password,@country)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@ID",newGUID.ToString());
                cmd.Parameters.AddWithValue("@Uname", txtboxUserName.Text);
                cmd.Parameters.AddWithValue("@email", txtboxEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtboxPassword.Text);
                cmd.Parameters.AddWithValue("@country", ddlCountry.SelectedValue);
                cmd.ExecuteNonQuery();
                Response.Redirect("Manager.aspx");
                Response.Write("Successful");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:"+ ex.ToString());
                
            }
        }
    }
}