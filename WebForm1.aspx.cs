using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string pass = txtPassword.Text;
            string email = txtEmail.Text;


            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mluh\\source\\repos\\WebApplication1\\WebApplication1\\App_Data\\loginandsignupdetails.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            try
            {
               

                string query = "SELECT Password FROM UserDetails WHERE Email = @email";
              
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@email", email);
                object val = cmd.ExecuteScalar();

                 if (val != null && val.ToString().Trim() == pass.Trim())
                 {
                        lblresult.Visible = true;
                    lblresult.Text = "Login successfull";
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    lblresult.Visible = true;
                    lblresult.Text = "Invalid password or Email";
                    return;
                }
              
            }catch (Exception ex)
            {
                lblresult.Text += ex.Message;
            }
            conn.Close();

        }
    }
}