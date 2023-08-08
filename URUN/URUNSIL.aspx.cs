using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;
namespace MT_e_SATIS.URUN
{
    public partial class URUNSIL : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["URUNID"]);
            var urun = db.Tbl_Urunler.Find(id);
            urun.DURUM = false;
            db.SaveChanges();
            Response.Redirect("/URUN/URUNLER.aspx");
        }
    }
}