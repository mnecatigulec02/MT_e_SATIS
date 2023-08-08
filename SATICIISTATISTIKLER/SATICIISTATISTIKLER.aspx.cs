using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.SATICIISTATISTIKLER
{
    public partial class SATICIISTATISTIKLER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            txtmusteri.Text = db.Tbl_Musteriler.Count().ToString();
            txtkategori.Text = db.Tbl_Kategoriler.Count().ToString();
            txtpersonel.Text = db.Tbl_Personeller.Count().ToString();
            txtsatis.Text = db.Tbl_Satislar.Count().ToString();
            txtsatis.Text = db.Tbl_Satislar.Count().ToString();
            int saticiid = Convert.ToInt32(Session["SATICIID"]);
            txtsaticisatis.Text = ((from x in db.Tbl_Satislar
                             where x.SATICISID == saticiid
                             select new
                             {
                                x.SATISID,
                                x.Tbl_Saticilar.SATICIADSOYAD,
                                x.Tbl_Urunler.URUNAD,
                                x.Tbl_Personeller.PERSONELADSOYAD,
                                MUSTERITAMAD = x.Tbl_Musteriler.MUSTERIAD + " " + x.Tbl_Musteriler.MUSTERISOYAD,
                                x.FIYAT}
                             ).ToList().Count()).ToString();
            txturun.Text = db.Tbl_Urunler.Count().ToString();
            txtkazanc.Text = ((from x in db.Tbl_Satislar
                               where x.SATICISID == saticiid
                               where x.DURUM==true
                               select x.FIYAT
                             ).Sum()).ToString();
            db.SaveChanges();
        }
    }
}