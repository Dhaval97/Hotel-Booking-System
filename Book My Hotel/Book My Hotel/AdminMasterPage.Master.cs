using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Book_My_Hotel
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("Person");
            myCookie.Expires = DateTime.Now.AddYears(-10);
            Response.Cookies.Add(myCookie);

            Session.Abandon();
            Session.Clear();
            Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddYears(-30);
            Response.Redirect("LoginPage.aspx");
        }
    }
}