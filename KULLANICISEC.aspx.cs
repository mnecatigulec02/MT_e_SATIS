using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace MT_e_SATIS
{
    public partial class KULLANICISEC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "Bugün: " + DateTime.Now.ToLocalTime();
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\SLOGIN.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\MUSTERIMODULU\\MLOGIN.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\LOGIN.aspx");
        }
    }
}