using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU
{
    public partial class KATEGORILENMISURUNLER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "Bugün: " + DateTime.Now;
                string urunKategoriyeGore = Session["KATEGORIAD"].ToString();
                if (urunKategoriyeGore != null)
                {

                    var urunler = (from x in db.Tbl_Urunler
                                   where x.DURUM == true
                                   where x.Tbl_Kategoriler.KATEGORIAD == urunKategoriyeGore
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
                    //Response.Redirect("\\MUSTERIMODULU\\MUSTERIURUNLER.aspx");
                    Repeater1.DataSource = urunler;
                    Repeater1.DataBind();             
                    
                }
                else
                {
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\MUSTERIMODULU\\MUSTERIURUNLER.aspx");
        }
    }
}