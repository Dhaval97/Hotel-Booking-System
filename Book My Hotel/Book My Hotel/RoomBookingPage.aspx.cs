using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Book_My_Hotel
{
    public partial class RoomBookingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["Person"] != null)
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;

            TextBox2.Text = gr.Cells[1].Text;
            TextBox3.Text = gr.Cells[2].Text;
            TextBox4.Text = gr.Cells[3].Text;
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            Session["HotelName"] = TextBox2.Text;
            Session["HotelCity"] = TextBox3.Text;
            Session["BasePrice"] = TextBox4.Text;

            Response.Redirect("RoomBookingPage2.aspx");
        }
    }
}