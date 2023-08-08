using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU
{
    public partial class MESAJLARIM : System.Web.UI.Page
    {
        DB_e_SATISEntities  db =new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int musteriID = Convert.ToInt32(Session["MUSTERIID"].ToString());
            var mesajlar = (from x in db.TBL_MESAJLAR
                            where x.GONDEREN==musteriID
                            select new
                            {
                                x.MESAJID,
                                MUSTERITAMAD = x.Tbl_Musteriler.MUSTERIAD + " " + x.Tbl_Musteriler.MUSTERISOYAD,
                                x.KONU,
                                x.MESAJICERIK,
                                x.ADMINYANIT
                            }
                           ).ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\MUSTERIMODULU\\MESAJOLUSTUR.aspx");
        }
    }
}