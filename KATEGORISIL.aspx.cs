using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS
{
    public partial class KATEGORISIL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DB_e_SATISEntities db = new DB_e_SATISEntities();
            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var p = db.Tbl_Kategoriler.Find(id);
            p.DURUM = false;
            //db.Tbl_Kategoriler.Remove(p);
            db.SaveChanges();
            Response.Redirect("KATEGORILER.aspx");           
            
        }
    }
}