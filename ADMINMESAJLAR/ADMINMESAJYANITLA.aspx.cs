using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.ADMINMESAJLAR
{
    public partial class ADMINMESAJYANITLA : System.Web.UI.Page
    {
        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToLocalTime().ToString();

            if (!IsPostBack)
            {
                int mesajID = Convert.ToInt32(Request.QueryString["MESAJID"].ToString());
                var mesaj = db.TBL_MESAJLAR.Find(mesajID);
                var musteriAD=(from x in db.Tbl_Musteriler
                               where x.MUSTERIID == mesaj.GONDEREN
                               select new
                               {
                                   MUSTERITAMAD= x.MUSTERIAD + " "+x.MUSTERISOYAD
                               }
                               ).SingleOrDefault();
                TextBoxKimden.Text = musteriAD.MUSTERITAMAD;
                var mesajbilgi = (from y in db.TBL_MESAJLAR
                                  where y.MESAJID== mesajID
                                  select new
                                  {
                                      y.KONU,
                                      y.MESAJICERIK,
                                      y.ADMINYANIT
                                  }
                                  ).SingleOrDefault();
                TextBoxKonu.Text = mesajbilgi.KONU;
                TextBoxMesajIcerik.Text = mesajbilgi.MESAJICERIK;
                
            }
        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MESAJID"].ToString());
            
            TBL_MESAJLAR t = db.TBL_MESAJLAR.Find(id);
            
            t.ADMINYANIT = TextBox1.Text;
            
            db.SaveChanges();
            //Response.Redirect("\\ADMINMESAJLAR\\ADMINMESAJLAR.aspx");
            Response.Write(t.MESAJID);
        }
    }
}