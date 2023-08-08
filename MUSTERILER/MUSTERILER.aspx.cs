using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERILER
{
    public partial class MUSTERILER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            if (!IsPostBack)
            {
                var musteriler = db.Tbl_Musteriler.Where(x=>x.MUSTERIDURUM==true).ToList();
                Repeater1.DataSource = musteriler;
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Musteriler tMusteri = new Tbl_Musteriler();
            tMusteri.MUSTERIKULLANICIADI = TextBox1.Text;
            tMusteri.MUSTERISIFRE = TextBox2.Text;            
            db.Tbl_Musteriler.Add(tMusteri);
            tMusteri.MUSTERIDURUM = true;
            db.SaveChanges();
            Response.Redirect("MUSTERILER.aspx");
        }
    }
}