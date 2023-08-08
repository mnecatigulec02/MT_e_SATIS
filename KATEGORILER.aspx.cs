using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS
{
    public partial class KATEGORILER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();
            var degerler =(from x in db.Tbl_Kategoriler
                           where x.DURUM==true
                           select new
                           {
                               x.KATEGORIID,
                               x.KATEGORIAD
                           }
                           ).ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}