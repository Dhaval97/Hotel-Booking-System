using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Book_My_Hotel
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void help_Click(object sender, EventArgs e)
        {
            string full = fullname.Value;
            string mail = email.Value;
            string phone = contact.Value;
            string msg = description.Value;

            double num;
            bool isNum = double.TryParse(phone, out num);

            try
            {
                if (isNum)
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=.\SQLEXPRESS; Initial Catalog=Hotel; Integrated Security=true;";
                    con.Open();

                    String query = "insert into Contact_Database (FullName, Email, Contact, Message) values ('" + full + "', '" + mail + "', '" + phone + "', '" + msg + "')";

                    SqlCommand cmd = new SqlCommand(query, con);

                    int i = cmd.ExecuteNonQuery();

                    if (i > 0)
                    {
                        Label1.Text = "Our Customer-Support Will Contact You. Thank You For Contacting Us...";

                        fullname.Value = "";
                        email.Value = "";
                        contact.Value = "";
                        description.Value = "";
                    }

                    cmd.Dispose();
                    con.Close();
                }
                else
                {
                    Label1.Text = "Contact Number cannot be Alphabet";
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