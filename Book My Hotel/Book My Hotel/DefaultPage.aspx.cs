using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Book_My_Hotel
{
    public partial class DefaultPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Person"] != null)
            {
                if (Request.Cookies["Person"]["Username"].ToString() == "Admin")
                {
                    Response.Redirect("AdminHomePage.aspx");
                }
                else
                {
                    Response.Redirect("RoomBookingPage.aspx");
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}