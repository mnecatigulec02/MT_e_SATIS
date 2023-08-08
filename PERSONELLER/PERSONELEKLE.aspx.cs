using MT_e_SATIS.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using MT_e_SATIS.Entity;

namespace MT_e_SATIS.PERSONELLER
{
    public partial class PERSONELEKLE : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            //int id = Convert.ToInt32(Request["PERSONELID"]);
            //TxtAd.Text = id.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Personeller t = new Tbl_Personeller();
            t.PERSONELADSOYAD=TxtAd.Text;
            t.PERSONELTELEFON=TxtTelefon.Text;
            t.PERSONELMAIL=TxtMail.Text;
            t.PERSONELCINSIYET=DropDownList1.SelectedValue;
            t.PERSONELDURUM = true;
            db.Tbl_Personeller.Add(t);
            db.SaveChanges();
            Response.Redirect("PERSONELLER.aspx");
            
        }
    }
}