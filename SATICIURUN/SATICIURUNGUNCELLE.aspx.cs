using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;
using MT_e_SATIS.URUN;

namespace MT_e_SATIS.SATICIURUN
{
    public partial class SATICIURUNGUNCELLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack)
            {
                var kate = (from x in db.Tbl_Kategoriler select new { x.KATEGORIID, x.KATEGORIAD }).ToList();
                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";
                DropDownList1.DataSource = kate;
                DropDownList1.DataBind();

                int id = Convert.ToInt32(Request["URUNID"]);
                var p = db.Tbl_Urunler.Find(id);
                TxtAd.Text = p.URUNAD;
                TxtStok.Text = p.URUNSTOK.ToString();
                TxtMarka.Text = p.URUNMARKA.ToString();
                TxtFiyat.Text = p.URUNFIYAT.ToString();
                DropDownList1.SelectedValue = p.URUNKATEGORI.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["URUNID"]);
            var urun = db.Tbl_Urunler.Find(id);
            urun.URUNAD = TxtAd.Text;
            urun.URUNSTOK = Convert.ToInt32(TxtStok.Text);
            urun.URUNMARKA = TxtMarka.Text;
            urun.URUNFIYAT = decimal.Parse(TxtFiyat.Text);
            urun.URUNKATEGORI = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            db.SaveChanges();
            Response.Redirect("\\SATICIURUN\\SATICIURUNLER.aspx");
        }
    }
}