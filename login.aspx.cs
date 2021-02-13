using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtAssignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void customerUser_CheckedChanged(object sender, EventArgs e)
        {
            if (customerUser.Checked.Equals(true))
            {
                artistUser.Checked = false;
            }
        }

        protected void artistUser_CheckedChanged(object sender, EventArgs e)
        {
            if (artistUser.Checked.Equals(true))
            {
                customerUser.Checked = false;
            }
        }
    }
}