using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERILER
{
    public partial class MUSTERIGUNCELLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack) 
            {
                int id = Convert.ToInt32(Request["MUSTERIID"]);
                TxtID.Text = id.ToString();
                var musteri = db.Tbl_Musteriler.Find(id);
                TxtAd.Text = musteri.MUSTERIAD;
                TxtSoyad.Text = musteri.MUSTERISOYAD;
                TxtMail.Text = musteri.MUSTERIMAIL;
                txtadres.Text = musteri.MUSTERIADRES;
                TxtTelefon.Text = musteri.MUSTERITELEFON;
                TxtKullaniciAdi.Text = musteri.MUSTERIKULLANICIADI;
                TxtSifre.Text = musteri.MUSTERISIFRE;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            TxtAd.Enabled = true;
            TxtSoyad.Enabled = true;
            txtadres.Enabled = true;
            TxtTelefon.Enabled = true;
            TxtKullaniciAdi.Enabled = true;
            TxtMail.Enabled = true;
            TxtSifre.Enabled = true;

            Button1.Visible = false;
            Button2.Visible = true;

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TxtID.Text);
            var musteri = db.Tbl_Musteriler.Find(id);
            musteri.MUSTERIAD = TxtAd.Text;
            musteri.MUSTERISOYAD = TxtSoyad.Text;
            musteri.MUSTERIADRES = txtadres.Text;
            musteri.MUSTERIKULLANICIADI = TxtKullaniciAdi.Text;
            musteri.MUSTERITELEFON = TxtTelefon.Text;
            musteri.MUSTERISIFRE = TxtSifre.Text;
            musteri.MUSTERIMAIL = TxtMail.Text;
            db.SaveChanges();
            TxtAd.Enabled = false;
            TxtSoyad.Enabled = false;
            TxtID.Enabled = false;
            txtadres.Enabled = false;
            TxtKullaniciAdi.Enabled = false;
            TxtMail.Enabled = false;
            TxtSifre.Enabled = false;
            TxtTelefon.Enabled = false;
            Button1.Visible = true;
            Button2.Visible = false;
        }
    }
}