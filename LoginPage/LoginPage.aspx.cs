using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
namespace LoginPage
{
    
    public partial class LoginPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string sqlCommandstring = "select count(*) from UserDataTable where UserName='" + TextBoxUserName.Text + "'";
                SqlCommand cmd = new SqlCommand(sqlCommandstring, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
               // Response.Write(temp);
                con.Close();

                if (temp==1)
                {
                    con.Open();
                    string checkPasswordQuery = "select password from UserDataTable where UserName='" + TextBoxUserName.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(checkPasswordQuery, con);
                    string password = cmd2.ExecuteScalar().ToString();
                    con.Close();
                    if (password == TextBoxPassword.Text)
                    {
                        Session["new"] = TextBoxUserName.Text;
                        Response.Write("password is correct");
                        Response.Redirect("Users.aspx");
                        
                    }
                    else
                    {
                        Response.Write("password is incorrect");
                    }

                }
                else
                {
                    Response.Write("UserName is incorrect");
                }
                
            }
        }

        
    }
}