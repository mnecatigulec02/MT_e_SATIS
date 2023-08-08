using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.PERSONELLER
{
    public partial class PERSONELSIL : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["PERSONELID"]);
            var personel = db.Tbl_Personeller.Find(id);
            personel.PERSONELDURUM = false;
            //db.Tbl_Personeller.Remove(personel);
            db.SaveChanges();
            Response.Redirect("PERSONELLER.aspx");
        }
    }
}