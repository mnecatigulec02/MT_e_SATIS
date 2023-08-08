using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS
{
    public partial class KATEGORIEKLE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DB_e_SATISEntities db = new DB_e_SATISEntities();
            Tbl_Kategoriler tKat = new Tbl_Kategoriler();
            tKat.KATEGORIAD = TextBox1.Text;
            tKat.DURUM = true;
            db.Tbl_Kategoriler.Add(tKat);
            db.SaveChanges();
            Response.Redirect("KATEGORILER.aspx");
        }
    }
}