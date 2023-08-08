using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;
using MT_e_SATIS.MUSTERILER;
using MT_e_SATIS.URUN;

namespace MT_e_SATIS.MUSTERIMODULU
{
    public partial class MUSTERIURUNLER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int mid = Convert.ToInt32(Session["MUSTERIID"]);
           

            var musteriAd = (from x in db.Tbl_Musteriler
                             where x.MUSTERIID == mid
                             select new
                             {
                                 MUSTERITAMAD = x.MUSTERIAD + " " + x.MUSTERISOYAD,
                             }
                            ).SingleOrDefault();
            
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime() + "   " + musteriAd.MUSTERITAMAD;
            var urunler = (from x in db.Tbl_Urunler
                           where x.DURUM == true
                           select new
                           {
                               x.URUNID,
                               x.URUNAD,
                               x.Tbl_Saticilar.SATICIADSOYAD,
                               x.URUNMARKA,
                               x.Tbl_Kategoriler.KATEGORIAD,
                               x.URUNFIYAT,
                               x.URUNSTOK,
                               x.URUNFOTO
                           }).ToList();
            Repeater1.DataSource = urunler;
            Repeater1.DataBind();
        }

        

      
    }
}