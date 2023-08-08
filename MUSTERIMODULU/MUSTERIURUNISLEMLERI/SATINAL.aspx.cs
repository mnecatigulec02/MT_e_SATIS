using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI
{
    public partial class SATINAL : System.Web.UI.Page
    {
        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int musteriid = Convert.ToInt32(Session["MUSTERIID"]);
                
                var musteri = (from x in db.Tbl_Musteriler
                               where x.MUSTERIID == musteriid
                               select new
                               {
                                   TAMAD = x.MUSTERIAD + " " + x.MUSTERISOYAD,
                                   x.MUSTERIBUTCE,
                                   x.MUSTERIADRES,
                                   x.MUSTERITELEFON
                               }
                               ).SingleOrDefault();
                TextBoxmusteriad.Text = musteri.TAMAD;
                TextBoxmusteributce.Text = (musteri.MUSTERIBUTCE).ToString();
                TextBoxmusteriadres.Text = musteri.MUSTERIADRES;
                TextBoxmusteritelefon.Text = musteri.MUSTERITELEFON;

                int urunid = Convert.ToInt32(Request.QueryString["URUNID"]);

                var urun = (from y in db.Tbl_Urunler
                            where y.URUNID == urunid
                            select new
                            {
                                y.URUNAD,
                                y.URUNMARKA,
                                y.URUNFIYAT,
                                y.URUNFOTO,
                            }
                            ).SingleOrDefault();
                TextBoxurunad.Text = urun.URUNAD;
                TextBoxmarka.Text = urun.URUNMARKA;
                TextBoxfiyat.Text = (urun.URUNFIYAT).ToString();
                Image1.ImageUrl = urun.URUNFOTO;
            }
        }

        protected void Buttonbilgidegistir_Click(object sender, EventArgs e)
        {
            TextBoxmusteriadres.Enabled= true;
            TextBoxmusteritelefon.Enabled= true;
            Buttonbilgionayla.Visible= true;
            Buttonbilgidegistir.Visible= false;
        }

        protected void Buttonbilgionayla_Click(object sender, EventArgs e)
        {
            int musteriid = Convert.ToInt32(Session["MUSTERIID"]);
            var musteri = db.Tbl_Musteriler.Find(musteriid);           
            musteri.MUSTERIADRES = TextBoxmusteriadres.Text;            
            musteri.MUSTERITELEFON = TextBoxmusteritelefon.Text;            
            db.SaveChanges();
            TextBoxmusteriadres.Enabled = false;
            TextBoxmusteritelefon.Enabled = false;
            Buttonbilgionayla.Visible = false;
            Buttonbilgidegistir.Visible = true;
        }

        protected void Buttononayla_Click(object sender, EventArgs e)
        {
            int musteriid = Convert.ToInt32(Session["MUSTERIID"]);
            var musteri = db.Tbl_Musteriler.Find(musteriid);
            decimal fiyat = Convert.ToDecimal(TextBoxfiyat.Text);
           
            musteri.MUSTERIBUTCE = musteri.MUSTERIBUTCE - fiyat;
            int sepetid= Convert.ToInt32(Request.QueryString["SEPETID"]);
           
            var sepettensil = db.TBL_SEPETLER.Find(sepetid);
            db.TBL_SEPETLER.Remove(sepettensil);
            db.SaveChanges();
            Response.Write("satın alım başarılı");
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }
    }
}