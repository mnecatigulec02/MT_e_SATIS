using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS
{
    public partial class KATEGORIGUNCELLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
                TxtID.Text = id.ToString();
                var ktgr = db.Tbl_Kategoriler.Find(id);
                TxtAd.Text = ktgr.KATEGORIAD;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var ktgr = db.Tbl_Kategoriler.Find(id);
            ktgr.KATEGORIAD = TxtAd.Text;
            db.SaveChanges();
            Response.Redirect("KATEGORILER.aspx");

        }
    }
}