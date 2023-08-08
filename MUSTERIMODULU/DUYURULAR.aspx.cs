using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU
{
    public partial class DUYURULAR : System.Web.UI.Page
    {

        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToLocalTime().ToString();
            var duyurular = (from x in db.Tbl_Duyurular
                             select new
                             {
                                 x.DUYURUID,
                                 x.Tbl_Adminler.ADMINADSOYAD,
                                 x.DUYURUMETNI
                             }
                             ).ToList();
            Repeater1.DataSource = duyurular;
            Repeater1.DataBind();
        }
    }
}