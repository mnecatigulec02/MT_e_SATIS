using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.SATICIURUN
{
    public partial class URUNLER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            int surunler = Convert.ToInt32(Session["SATICIID"]);
            //Response.Write(surunler);
            var urunler = (from x in db.Tbl_Urunler
            where x.SATICIUID == surunler
            where x.DURUM==true
                           select new
                           {
                               x.Tbl_Saticilar.SATICIADSOYAD,
                               x.URUNID,
                               x.URUNAD,
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