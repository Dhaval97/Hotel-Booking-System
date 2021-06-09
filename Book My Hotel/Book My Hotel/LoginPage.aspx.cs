using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Book_My_Hotel
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string name = username.Value;
            string passwd = password.Value;

            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=.\SQLEXPRESS; Initial Catalog=Hotel; Integrated Security=true;";
                con.Open();

                if (chkIsAdmin.Checked == true)
                {
                    String query = "select * from Admin_Database where Username=@Username and Password=@Password";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.Add(new SqlParameter("@Username", name));
                    cmd.Parameters.Add(new SqlParameter("@Password", passwd));

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        HttpCookie myCookie = new HttpCookie("Person");
                        myCookie["Username"] = name;
                        myCookie.Expires = DateTime.Now.AddYears(10);
                        Response.Cookies.Add(myCookie);

                        Response.Redirect("AdminHomePage.aspx");
                    }
                    else
                    {
                        Label1.Text = "Invalid Credentials";
                    }

                    dr.Close();
                    cmd.Dispose();
                    con.Close();
                }
                else
                {
                    String query = "select * from Registration_Database where Username=@Username and Password=@Password";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.Add(new SqlParameter("@Username", name));
                    cmd.Parameters.Add(new SqlParameter("@Password", passwd));

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        HttpCookie myCookie = new HttpCookie("Person");
                        myCookie["Username"] = name;
                        myCookie.Expires = DateTime.Now.AddYears(10);
                        Response.Cookies.Add(myCookie);

                        Response.Redirect("RoomBookingPage.aspx");
                    }
                    else
                    {
                        Label1.Text = "Invalid Credentials";
                    }

                    dr.Close();
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