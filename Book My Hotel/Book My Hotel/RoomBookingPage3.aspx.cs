using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Book_My_Hotel
{
    public partial class RoomBookingPage3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = Session["HotelName"].ToString();
                Label2.Text = Session["HotelCity"].ToString();
                Label3.Text = Session["RoomType"].ToString();
                Label4.Text = Session["NumberOfRooms"].ToString();
                Label5.Text = Session["CheckIn"].ToString();
                Label6.Text = Session["CheckOut"].ToString();
                Label11.Text = Session["TotalDays"].ToString();

                lblAmount.Text = Session["Payment"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("RoomBookingPage.aspx");
                //throw;
            }
        }

        protected void Final_Click(object sender, EventArgs e)
        {
            string card = cardNumber.Value;
            string mm = expityMonth.Value;
            string yy = expityYear.Value;
            string cc = cvvCode.Value;

            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=.\SQLEXPRESS; Initial Catalog=Hotel; Integrated Security=true;";
                con.Open();

                String query = "insert into Payment_Database (Username, CardNumber, ExpiryMonth, ExpiryYear, CVV, Amount) values ('" + Request.Cookies["Person"]["Username"].ToString() + "', '" + card + "', '" + mm + "', '" + yy + "', '" + cc + "', '" + Session["Payment"].ToString() + "')";

                SqlCommand cmd = new SqlCommand(query, con);

                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Label7.Text = "Payment Successful";
                }

                cmd.Dispose();
                con.Close();
            }
            catch (Exception ex)
            {
                Label7.Text = ex.Message;
                //throw;
            }

            string lblHotelName = Session["HotelName"].ToString();
            string Hotel_ID;
            string Payment_ID;

            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=.\SQLEXPRESS; Initial Catalog=Hotel; Integrated Security=true;";
                con.Open();

                String query1 = "select HotelID from Hotel_Database where HotelName='" + lblHotelName + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                SqlDataReader dr1 = cmd1.ExecuteReader();

                if (dr1.Read())
                {
                    Hotel_ID = dr1[0].ToString();
                    Label8.Text = Hotel_ID;
                }
                else
                {
                    Label8.Text = "No Record(s) Found";
                }

                dr1.Close();
                cmd1.Dispose();

                String query2 = "select top 1 (PaymentID) FROM Payment_Database ORDER BY PaymentID DESC";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                SqlDataReader dr2 = cmd2.ExecuteReader();

                if (dr2.Read())
                {
                    Payment_ID = dr2[0].ToString();
                    Label9.Text = Payment_ID;
                }
                else
                {
                    Label9.Text = "No Record(s) Found";
                }

                dr2.Close();
                cmd2.Dispose();

                String query3 = "insert into Booking_Database (Username, HotelID, HotelName, HotelCity, RoomType, Number_Of_Rooms, CheckIn_Date, CheckOut_Date, Amount, PaymentID) values ('" + Request.Cookies["Person"]["Username"].ToString() + "', '" + Label8.Text + "', '" + lblHotelName + "', '" + Session["HotelCity"].ToString() + "', '" + Session["RoomType"].ToString() + "', '" + Session["NumberOfRooms"].ToString() + "', '" + Session["CheckIn"].ToString() + "', '" + Session["CheckOut"].ToString() + "', '" + Session["Payment"].ToString() + "', '" + Label9.Text + "')";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                int i = cmd3.ExecuteNonQuery();

                if (i > 0)
                {
                    Label12.Text = "Booking Successfully Done. Redirecting to Main Page in 5 seconds...";   
                }
                else
                {
                    Label10.Text = "ERROR";
                }

                cmd3.Dispose();
                con.Close();
            }
            catch (Exception ex)
            {
                Label7.Text = ex.Message;
                //throw;
            }

            string ToRedirectURL = "RoomBookingPage.aspx";
            Response.AppendHeader("Refresh", "5;URL=" + ToRedirectURL);
        }

    }
}