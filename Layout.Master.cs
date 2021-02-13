using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtAssignment
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                lblLogin.Text = "<a href =\"login.aspx\" >Login</a>";
                lblRegister.Text = "<a href =\"register.aspx\">Register</a>";
            }
        }

        protected void PageLogo_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}