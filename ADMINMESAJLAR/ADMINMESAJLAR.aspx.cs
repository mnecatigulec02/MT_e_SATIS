using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.ADMINMESAJLAR
{
    public partial class ADMINMESAJLAR : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var mesajlar = (from x in db.TBL_MESAJLAR
                            select new
                            {
                                x.MESAJID,
                                MUSTERITAMAD = x.Tbl_Musteriler.MUSTERIAD+" "+x.Tbl_Musteriler.MUSTERISOYAD,
                                x.KONU,
                                x.MESAJICERIK
                            }
                            ).ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();
        }
    }
}