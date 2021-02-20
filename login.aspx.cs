using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ArtAssignment
{
    public partial class Login : System.Web.UI.Page
    {
        public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public static SqlConnection sqlConnection1 = new SqlConnection(constring);
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void login()
        {
            if (artistUser.Checked == true)
            {
                string strSelect = "SELECT aFName, aPassword FROM Artist WHERE aEmail = '" + userEmail.Text + "'";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                cmd.CommandText = strSelect;
                SqlDataReader dtrUser = cmd.ExecuteReader();

                if (dtrUser.Read())
                {
                    if (userPassword.Text == dtrUser["aPassword"].ToString())
                    {
                        dtrUser.Close();
                        sqlConnection1.Close();             
                        
                        Response.Redirect("~/homepage.aspx");
                    }
                    else
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password incorect, Please reenter the password.');", true);
                        dtrUser.Close();
                        sqlConnection1.Close();
                    }
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email does not register before, Please try other email.');", true);
                    dtrUser.Close();
                    sqlConnection1.Close();
                }
            }
            else if (customerUser.Checked == true)
            {
                string strSelect = "SELECT cFName, cPassword FROM Customer WHERE cEmail = '" + userEmail.Text + "'";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                cmd.CommandText = strSelect;
                SqlDataReader dtrUser = cmd.ExecuteReader();

                if (dtrUser.Read())
                {
                    if (userPassword.Text == dtrUser["cPassword"].ToString())
                    {
                        dtrUser.Close();
                        sqlConnection1.Close();
                        Response.Redirect("~/forgetPassword.aspx");
                    }
                    else
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password incorect, Please reenter the password.');", true);
                        dtrUser.Close();
                        sqlConnection1.Close();
                    }
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email does not register before, Please try other email.');", true);
                    dtrUser.Close();
                    sqlConnection1.Close();
                }
            }
        }
            protected void loginSubmitBtn_Click(object sender, EventArgs e)
        {
            login();
        }

        
        }
    }
