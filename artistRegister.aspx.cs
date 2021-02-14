using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtAssignment
{
    public partial class ArtistRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            String gender = "";
            if(aGenderBtn1.Checked == true)
            {
                gender = "Male";
            }
            else if (aGenderBtn2.Checked == true)
            {
                gender = "Female";
            }
        }
    }
}