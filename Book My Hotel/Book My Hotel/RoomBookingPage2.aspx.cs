using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Book_My_Hotel
{
    public partial class RoomBookingPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblBasePrice.Text = Session["BasePrice"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("RoomBookingPage.aspx");
                //throw;
            }
        }

        protected void RadioButtonRooms_SelectedIndexChanged(object sender, EventArgs e)
        {
            string show = RadioButtonRooms.SelectedValue.ToString();
            lblRooms.Text = "Room Selected : " + show;
            int showPrice = Convert.ToInt32(Session["BasePrice"].ToString());
            int ans;

            if (show == "Single Room")
            {
                ans = showPrice;
                lblPrice.Text = "Price = Rs." + ans + "/-";
            }

            if (show == "Double Room")
            {
                ans = showPrice + 6000;
                lblPrice.Text = "Price = Rs." + ans + "/-";
            }

            if (show == "Deluxe Room")
            {
                ans = showPrice + 7500;
                lblPrice.Text = "Price = Rs." + ans + "/-";
            }

            if (show == "Connecting Room")
            {
                ans = showPrice + 4500;
                lblPrice.Text = "Price = Rs." + ans + "/-";
            }

            if (show == "Executive Suite")
            {
                ans = showPrice + 12000;
                lblPrice.Text = "Price = Rs." + ans + "/-";
            }

            if (show == "Presidential Suite")
            {
                ans = showPrice + 15000;
                lblPrice.Text = "Price = Rs." + ans + "/-";
            }
        }

        protected void txtNumber_TextChanged(object sender, EventArgs e)
        {
            lblRoomsNeeded.Text = "Rooms Needed : " + txtNumber.Text;
        }

        protected void checkInCalendar_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckIn.Text = checkInCalendar.SelectedDate.ToShortDateString();
        }

        protected void checkOutCalendar_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckOut.Text = checkOutCalendar.SelectedDate.ToShortDateString();
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(txtNumber.Text) <= 0)
                {
                    lblNumber.Text = "Rooms Needed should be greater than " + txtNumber.Text;
                }
                else
                {
                    Session["RoomType"] = RadioButtonRooms.SelectedItem.ToString();
                    Session["NumberOfRooms"] = txtNumber.Text;
                    Session["CheckIn"] = txtCheckIn.Text;
                    Session["CheckOut"] = txtCheckOut.Text;

                    string show = RadioButtonRooms.SelectedValue.ToString();
                    int showPrice = Convert.ToInt32(Session["BasePrice"].ToString());
                    int finalPayment;
                    int numRooms = Convert.ToInt32(txtNumber.Text);

                    string start = checkInCalendar.SelectedDate.Day.ToString();
                    string end = checkOutCalendar.SelectedDate.Day.ToString();

                    if (Convert.ToInt32(end) >= Convert.ToInt32(start))
                    {
                        int days = (Convert.ToInt32(end) - Convert.ToInt32(start)) + 1;

                        Session["TotalDays"] = days;

                        if (show == "Single Room")
                        {
                            finalPayment = showPrice * numRooms * days;
                            Session["Payment"] = finalPayment;
                        }

                        if (show == "Double Room")
                        {
                            finalPayment = (showPrice + 6000) * numRooms * days;
                            Session["Payment"] = finalPayment;
                        }

                        if (show == "Deluxe Room")
                        {
                            finalPayment = (showPrice + 7500) * numRooms * days;
                            Session["Payment"] = finalPayment;
                        }

                        if (show == "Connecting Room")
                        {
                            finalPayment = (showPrice + 4500) * numRooms * days;
                            Session["Payment"] = finalPayment;
                        }

                        if (show == "Executive Suite")
                        {
                            finalPayment = (showPrice + 12000) * numRooms * days;
                            Session["Payment"] = finalPayment;
                        }

                        if (show == "Presidential Suite")
                        {
                            finalPayment = (showPrice + 15000) * numRooms * days;
                            Session["Payment"] = finalPayment;
                        }

                        Response.Redirect("RoomBookingPage3.aspx");
                    }
                    else
                    {
                        lblNumber.Text = "Check-In & Check-Out Date are incorrect";
                    }
                }
            }
            catch (Exception)
            {
                lblNumber.Text = "Invalid Number of Rooms";
                //throw;
            }
        }

        protected void checkInCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void checkOutCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}