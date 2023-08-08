using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.SATISLAR
{
    public partial class SATISEKLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack)
            {
                var urun = (from x in db.Tbl_Urunler
                            where x.DURUM == true
                            select new
                            { x.URUNID, x.URUNAD }).ToList();
                DropDownList1.DataTextField = "URUNAD";
                DropDownList1.DataValueField = "URUNID";
                DropDownList1.DataSource = urun;
                DropDownList1.DataBind();

                var musteri = (from x in db.Tbl_Musteriler 
                               where x.MUSTERIDURUM == true 
                               select new 
                               { x.MUSTERIID, MUSTERITAMAD = x.MUSTERIAD + " " + x.MUSTERISOYAD }).ToList();
                DropDownList2.DataTextField = "MUSTERITAMAD";
                DropDownList2.DataValueField = "MUSTERIID";
                DropDownList2.DataSource = musteri;
                DropDownList2.DataBind();

                var personel = (from x in db.Tbl_Personeller
                                where x.PERSONELDURUM == true
                                select new { x.PERSONELID, x.PERSONELADSOYAD }).ToList();
                DropDownList3.DataTextField = "PERSONELADSOYAD";
                DropDownList3.DataValueField = "PERSONELID";
                DropDownList3.DataSource = personel;
                DropDownList3.DataBind();

                var satici = (from x in db.Tbl_Saticilar
                                
                                select new { x.SATICID, x.SATICIADSOYAD}).ToList();
                DropDownList4.DataTextField = "SATICIADSOYAD";
                DropDownList4.DataValueField = "SATICID";
                DropDownList4.DataSource = satici;
                DropDownList4.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Satislar tSatis = new Tbl_Satislar();
            tSatis.URUN = int.Parse(DropDownList1.SelectedValue);
            tSatis.MUSTERI = int.Parse(DropDownList2.SelectedValue);
            tSatis.PERSONEL = int.Parse(DropDownList3.SelectedValue);
            tSatis.SATICISID = int.Parse(DropDownList4.SelectedValue);
            tSatis.FIYAT = decimal.Parse(TxtFiyat.Text);
            tSatis.DURUM = true;
            db.Tbl_Satislar.Add(tSatis);
            db.SaveChanges();
            Response.Redirect("SATISLAR.aspx");
        }
    }
}