using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERILER
{
    public partial class MUSTERISIL : System.Web.UI.Page
    {
        DB_e_SATISEntities db =  new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["MUSTERIID"]);
            var musteri = db.Tbl_Musteriler.Find(id);
            //db.Tbl_Musteriler.Remove(musteri);
            musteri.MUSTERIDURUM = false;
            db.SaveChanges();
            Response.Redirect("MUSTERILER.aspx");
        }
    }
}