using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.AYARLAR
{
    public partial class ADMINBILGI : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack)
            {
                
                var adminBilgi = db.Tbl_Adminler.Find(Session["ADMINID"]);
                
                TxtAd.Text = adminBilgi.ADMINADSOYAD;
                TxtTelefon.Text = adminBilgi.ADMINTELEFON;
                TxtMail.Text = adminBilgi.ADMINMAIL;
                DropDownList1.SelectedValue = adminBilgi.ADMINCINSIYET;
                TxtKullaniciAdi.Text = adminBilgi.ADMINKULLANICIADI;
                TxtSifre.Text = adminBilgi.ADMINSIFRE;
                TxtId.Text =(adminBilgi.ADMINID).ToString();
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
            var admin = db.Tbl_Adminler.Find(id);
            admin.ADMINADSOYAD = TxtAd.Text;
            admin.ADMINTELEFON = TxtTelefon.Text;
            admin.ADMINMAIL = TxtMail.Text;
            admin.ADMINKULLANICIADI = TxtKullaniciAdi.Text;
            admin.ADMINSIFRE = TxtSifre.Text;
            admin.ADMINCINSIYET = DropDownList1.SelectedValue;
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