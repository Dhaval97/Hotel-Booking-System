using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Book_My_Hotel
{
    public partial class AdminRoomDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["Person"] == null)
                {
                    Response.Redirect("LoginPage.aspx");
                }
            }
            catch (Exception)
            {

                //throw;
            }
        }
    }
}