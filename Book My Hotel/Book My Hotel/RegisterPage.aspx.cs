using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Book_My_Hotel
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            string full = fullname.Value;
            string name = username.Value;
            string mail = email.Value;
            string passwd = password.Value;
            string phone = contact.Value;

            double num;
            bool isNum = double.TryParse(phone, out num);


            if (!isNum)
            {
                Label1.Text = "Contact Number cannot be Alphabet";
            }

            if (name == "Admin")
            {
                Label1.Text = "Username cannot be Admin";
            }

            try
            {
                if (isNum && name != "Admin")
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=.\SQLEXPRESS; Initial Catalog=Hotel; Integrated Security=true;";
                    con.Open();

                    String query = "select * from Registration_Database where Username='" + name + "'";

                    SqlCommand cmd = new SqlCommand(query, con);

                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count > 0)
                    {
                        Label1.Text = "Username Already Taken";
                    }
                    else
                    {
                        String query1 = "insert into Registration_Database (FullName, Username, Email, Password, Contact) values ('" + full + "', '" + name + "', '" + mail + "', '" + passwd + "', '" + phone + "')";

                        SqlCommand cmd1 = new SqlCommand(query1, con);

                        int i = cmd1.ExecuteNonQuery();

                        if (i > 0)
                        {
                            Label1.Text = "Registration Successful";

                            fullname.Value = "";
                            username.Value = "";
                            email.Value = "";
                            password.Value = "";
                            contact.Value = "";
                        }
                    }

                    cmd.Dispose();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                //throw;
            }
        }
    }
}