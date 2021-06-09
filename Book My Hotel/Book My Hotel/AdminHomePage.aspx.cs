using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Book_My_Hotel
{
    public partial class AdminHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["Person"] != null && Request.Cookies["Person"]["Username"].ToString() == "Admin")
                {
                    lblPerson.Text = Request.Cookies["Person"]["Username"].ToString();
                }
                else
                {
                    Response.Redirect("LoginPage.aspx");
                }
            }
            catch (Exception)
            {

                //throw;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//Hotel_Images//" + str);
                string path = "~//Hotel_Images//" + str.ToString();

                try
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=.\SQLEXPRESS; Initial Catalog=Hotel; Integrated Security=true;";
                    con.Open();

                    String query = "insert into Hotel_Database (HotelName, HotelCity, BasePrice, HotelImage) values ('" + txtHotelName.Text + "', '" + txtHotelCity.Text + "', '" + txtPrice.Text + "', '" + path + "')";

                    SqlCommand cmd = new SqlCommand(query, con);

                    int i = cmd.ExecuteNonQuery();

                    if (i > 0)
                    {
                        Label1.Text = "Added Successfully";

                        txtHotelName.Text = "";
                        txtHotelCity.Text = "";
                        txtPrice.Text = "";

                        GridView1.Visible = true;

                    }

                    cmd.Dispose();
                    con.Close();

                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                    //throw;
                }
            }
            else
            {
                Label1.Text = "ERROR";
            }
        }
    }
}