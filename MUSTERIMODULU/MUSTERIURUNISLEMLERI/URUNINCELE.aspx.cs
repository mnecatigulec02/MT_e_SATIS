using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI
{
    public partial class URUNINCELE : System.Web.UI.Page
    {
        DB_e_SATISEntities db  = new DB_e_SATISEntities();
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
            
            Label10.Text = "Bugün: " + DateTime.Now.ToLocalTime() + "   " + musteriAd.MUSTERITAMAD;
            int id = Convert.ToInt32(Request.QueryString["URUNID"]);
            var seciliurun = db.Tbl_Urunler.Find(id);

            txturunid.Text = seciliurun.URUNID.ToString();
            txturunad.Text = seciliurun.URUNAD;
            txtsaticiad.Text = seciliurun.Tbl_Saticilar.SATICIADSOYAD;
            txtmarka.Text = seciliurun.URUNMARKA;
            txtkategori.Text = seciliurun.Tbl_Kategoriler.KATEGORIAD;
            txtfiyat.Text=seciliurun.URUNFIYAT.ToString();
            txtstok.Text=seciliurun.URUNSTOK.ToString();
            txtUrunDetay.Text=seciliurun.URUNDETAY.ToString();
            //var yorum = db.Tbl_Yorumlar.Find(1);
            //TextBoxYorum.Text = yorum.YORUMMETNI;

            var yorumlartablosu = (from y in db.Tbl_Yorumlar
                                   where y.URUNYID == id
                                   select new
                                   {
                                       y.YORUMID,
                                       MUSTERIADSOYAD = y.Tbl_Musteriler.MUSTERIAD + y.Tbl_Musteriler.MUSTERISOYAD,
                                       y.YORUMMETNI,
                                       
                                   }
                                   ).ToList();
            Repeater1.DataSource= yorumlartablosu;
            Repeater1.DataBind();
        }

        protected void btnyorumyap_Click(object sender, EventArgs e)
        {
            Session.Add("URUNID", txturunid.Text);
            Response.Redirect("\\MUSTERIMODULU\\YORUMISLEMLERI\\YORUMYAP.aspx");
        }
    }
}