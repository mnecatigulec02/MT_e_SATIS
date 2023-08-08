using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.ISTATISTIKLER
{
    public partial class ISTATISTIKLER : System.Web.UI.Page
    {
        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            txtmusteri.Text = db.Tbl_Musteriler.Count().ToString();
                txtkategori.Text = db.Tbl_Kategoriler.Count().ToString();
                txtpersonel.Text = db.Tbl_Personeller.Count().ToString();
                txtsatis.Text = db.Tbl_Satislar.Count().ToString();
                txturun.Text = db.Tbl_Urunler.Count().ToString();
            db.SaveChanges();
            
        }
    }
}