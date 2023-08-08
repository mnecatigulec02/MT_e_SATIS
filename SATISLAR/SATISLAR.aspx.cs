using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.SATISLAR
{
    public partial class SATISLAR : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            //var satislar = db.Tbl_Satislar.ToList();
            var satislar = (from x in db.Tbl_Satislar
                            where x.DURUM==true
                            select new
                            {
                                x.SATISID,
                                x.Tbl_Saticilar.SATICIADSOYAD,
                                x.Tbl_Urunler.URUNAD,
                                x.Tbl_Personeller.PERSONELADSOYAD,
                                MUSTERITAMAD = x.Tbl_Musteriler.MUSTERIAD + " " + x.Tbl_Musteriler.MUSTERISOYAD,
                                x.FIYAT
                            }
                            ).ToList();
            Repeater1.DataSource = satislar;
            Repeater1.DataBind();
        }
    }
}