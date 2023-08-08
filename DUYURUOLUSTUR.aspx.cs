using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS
{
    public partial class DUYURUOLUSTUR : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Session["ADMINID"]);
                var adminAd = (from x in db.Tbl_Adminler
                               where x.ADMINID == id
                               select new
                               {
                                   x.ADMINADSOYAD
                               }
                              ).SingleOrDefault();
                txtduyuruyapan.Text = adminAd.ADMINADSOYAD;
            }

            
        }

        protected void btnduyuruolustur_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ADMINID"]);

            Tbl_Duyurular t = new Tbl_Duyurular();
            t.DUYURUYAPAN = id;
            t.DUYURUMETNI=txtduyurumetni.Text;
            db.Tbl_Duyurular.Add(t);
            db.SaveChanges();
            Response.Write("Duyuru oluşturuldu.");
            txtduyurumetni.Text = "";
        }
    }
}