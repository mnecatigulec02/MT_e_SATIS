using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.PERSONELLER
{
    public partial class PERSONELGUNCELLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request["PERSONELID"]);
                TxtId.Text = id.ToString();
                var per = db.Tbl_Personeller.Find(id);
                TxtAd.Text = per.PERSONELADSOYAD;
                TxtTelefon.Text = per.PERSONELTELEFON;
                TxtMail.Text = per.PERSONELMAIL;
                //var personel = (from x in db.Tbl_Personeller select new { x.PERSONELID, x.PERSONELCINSIYET}).ToList();
                //DropDownList1.DataTextField = "PERSONELCINSIYET";
                //DropDownList1.DataValueField = "PERSONELID";
                //string drop = "Erkek";
                //DropDownList1.DataSource = drop;
                //DropDownList1.DataBind();
                DropDownList1.SelectedValue = per.PERSONELCINSIYET;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["PERSONELID"]);
            var per = db.Tbl_Personeller.Find(id);
            per.PERSONELADSOYAD = TxtAd.Text;           
            per.PERSONELTELEFON = TxtTelefon.Text;           
            per.PERSONELMAIL = TxtMail.Text;           
            per.PERSONELCINSIYET = DropDownList1.SelectedValue;           
            db.SaveChanges();
            Response.Redirect("PERSONELLER.aspx");
        }
    }
}