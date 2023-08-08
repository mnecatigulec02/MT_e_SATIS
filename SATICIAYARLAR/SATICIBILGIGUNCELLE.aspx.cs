using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.SATICIAYARLAR
{
    public partial class SATICIBILGIGUNCELLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack)
            {

                var saticiBilgi = db.Tbl_Saticilar.Find(Session["SATICIID"]);

                TxtAd.Text = saticiBilgi.SATICIADSOYAD;
                TxtTelefon.Text = saticiBilgi.SATICITELEFON;
                TxtMail.Text = saticiBilgi.SATICIMAIL;
                DropDownList1.SelectedValue = saticiBilgi.SATICICINSIYET;
                TxtKullaniciAdi.Text = saticiBilgi.SATICIKULLANICIADI;
                TxtSifre.Text = saticiBilgi.SATICISIFRE;
                TxtId.Text = (saticiBilgi.SATICID).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TxtAd.Enabled = true;
            TxtTelefon.Enabled = true;
            TxtMail.Enabled = true;
            TxtKullaniciAdi.Enabled = true;
            TxtSifre.Enabled = true;
            DropDownList1.Enabled = true;
            Button2.Visible = true;
            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TxtId.Text);
            var satici = db.Tbl_Saticilar.Find(id);
            satici.SATICIADSOYAD = TxtAd.Text;
            satici.SATICITELEFON = TxtTelefon.Text;
            satici.SATICIMAIL = TxtMail.Text;
            satici.SATICIKULLANICIADI = TxtKullaniciAdi.Text;
            satici.SATICISIFRE = TxtSifre.Text;
            satici.SATICICINSIYET = DropDownList1.SelectedValue;
            db.SaveChanges();
            TxtAd.Enabled = false;
            TxtTelefon.Enabled = false;
            TxtMail.Enabled = false;
            TxtKullaniciAdi.Enabled = false;
            TxtSifre.Enabled = false;
            DropDownList1.Enabled = false;
            Button2.Visible = false;
            Button1.Visible = true;
        }
    }
}