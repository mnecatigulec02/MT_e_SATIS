using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.SATICIURUN
{
    public partial class SATICIURUNEKLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            int id = Convert.ToInt32(Session["SATICIID"]);
            //Response.Write(id);
            if (!IsPostBack)
            {
                var kate = (from x in db.Tbl_Kategoriler select new { x.KATEGORIID, x.KATEGORIAD }).ToList();
                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";
                DropDownList1.DataSource = kate;
                DropDownList1.DataBind();

                //var stc = (from x in db.Tbl_Saticilar select new { x.SATICID, x.SATICIADSOYAD }).ToList();
                //DropDownListsatici.DataTextField = "SATICIADSOYAD";
                //DropDownListsatici.DataValueField = "SATICID";
                //DropDownListsatici.DataSource = stc;
                //DropDownListsatici.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Urunler t = new Tbl_Urunler();
            t.URUNAD = TxtAd.Text;
            t.SATICIUID = Convert.ToInt32(Session["SATICIID"]);
            t.URUNSTOK = int.Parse(TxtStok.Text);
            t.URUNKATEGORI = int.Parse(DropDownList1.SelectedValue.ToString());
            t.URUNFIYAT = decimal.Parse(TxtFiyat.Text);
            t.URUNMARKA = TxtMarka.Text;
            t.DURUM = true;
            db.Tbl_Urunler.Add(t);
            db.SaveChanges();
            Response.Redirect("\\SATICIURUN\\SATICIURUNLER.aspx");
        }
    }
}