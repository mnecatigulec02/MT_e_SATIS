using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU.YORUMISLEMLERI
{
    public partial class YORUMYAP : System.Web.UI.Page
    {
        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int mid = Convert.ToInt32(Session["MUSTERIID"]);
            Label4.Text = mid.ToString();

            var musteriAd = (from x in db.Tbl_Musteriler
                             where x.MUSTERIID == mid
                             select new
                             {
                                 MUSTERITAMAD = x.MUSTERIAD +" "+ x.MUSTERISOYAD,
                             }
                            ).SingleOrDefault();
            txtmusteri.Text = musteriAd.MUSTERITAMAD;
            int uid = Convert.ToInt32(Session["URUNID"]);
           Label5.Text= uid.ToString();
            var urunAd = (from y in db.Tbl_Urunler
                          where y.URUNID == uid
                          select new
                          {
                              y.URUNAD
                          }
                          ).SingleOrDefault();
            txturun.Text = urunAd.URUNAD; 
            //Tbl_Yorumlar t = new Tbl_Yorumlar();
            //t.MUSTERIYID=Convert.ToInt32(musteriid);
            
            //db.Tbl_Musteriler.Find(t.MUSTERIYID).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Yorumlar t = new Tbl_Yorumlar();
            t.URUNYID=int.Parse(Label5.Text);
            t.MUSTERIYID=int.Parse(Label4.Text);
            t.YORUMMETNI=txtUrunYorum.Text;
            db.Tbl_Yorumlar.Add(t);
            db.SaveChanges();

            
            Response.Redirect("\\MUSTERIMODULU\\MUSTERIURUNLER.aspx");
          
        }
    }
}