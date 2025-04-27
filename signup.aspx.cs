using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;
            string confirmPass = txtConfirmPassword.Text;

            lblname.Visible = lblemail.Visible = lblpass1.Visible = lblpasscon.Visible = false;

            
            if (string.IsNullOrEmpty(name))
            {
                lblname.Visible = true;
                return;
            }

            if (string.IsNullOrEmpty(email))
            {
                lblemail.Visible = true;
                return;
            }

            if (string.IsNullOrEmpty(password) || password.Length < 8)
            {
                lblpass1.Visible = true;
                return;
            }

            if (string.IsNullOrEmpty(confirmPass) || confirmPass != password)
            {
                lblpasscon.Visible = true;
                return;
            }


            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mluh\\source\\repos\\WebApplication1\\WebApplication1\\App_Data\\loginandsignupdetails.mdf;Integrated Security=True";


            try
            {
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    string query = "INSERT INTO UserDetails (Name, Email, Password) VALUES (@Name, @Email, @Password)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password); 

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }

                lblAcccreated.Visible = true;
            }
            catch (Exception ex)
            {
                lblAcccreated.Text = "Error: " + ex.Message;
                lblAcccreated.Visible = true;
            }
        }
    }
}
