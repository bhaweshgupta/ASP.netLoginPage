using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                Label1.Text = Session["new"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["new"] = null;
            Response.Redirect("LoginPage.aspx");
        }
    }
}