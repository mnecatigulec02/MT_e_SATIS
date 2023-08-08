using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.PERSONELLER
{
    public partial class PERSONELLER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            var personeller = db.Tbl_Personeller.Where(x=>x.PERSONELDURUM==true).ToList();
            Repeater1.DataSource = personeller;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}