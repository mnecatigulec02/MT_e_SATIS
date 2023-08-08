using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;
using System.Data.SqlClient;

namespace MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI
{
    public partial class MUSTERISEPETEEKLE : System.Web.UI.Page
    {
        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-PVEILPL;Initial Catalog=DB_e_SATIS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int musteriID = Convert.ToInt32(Session["MUSTERIID"].ToString());
                
                int urunID = Convert.ToInt32(Request.QueryString["URUNID"].ToString());
                if (urunID == 0) 
                {
                    var urunSepet = (from x in db.TBL_SEPETLER
                                     where x.MUSTERISID == musteriID
                                     select new
                                     {
                                         x.SEPETID,
                                         x.Tbl_Urunler.URUNAD,
                                         x.Tbl_Urunler.URUNID,
                                         x.Tbl_Musteriler.MUSTERIAD,
                                         x.Tbl_Urunler.URUNFIYAT
                                     }).ToList();
                    Repeater1.DataSource = urunSepet;
                    Repeater1.DataBind();
                }
                else
                {
                    TBL_SEPETLER t = new TBL_SEPETLER();
                    t.URUNSID = urunID;
                    t.MUSTERISID = musteriID;
                    db.TBL_SEPETLER.Add(t);
                    
                    db.SaveChanges();                
                    var urunSepet = (from x in db.TBL_SEPETLER
                                     where x.MUSTERISID == musteriID
                                     select new
                                     {
                                         x.SEPETID,
                                         x.Tbl_Urunler.URUNAD,
                                         x.Tbl_Urunler.URUNID,
                                         x.Tbl_Musteriler.MUSTERIAD,
                                         x.Tbl_Urunler.URUNFIYAT
                                     }).ToList();
                    Repeater1.DataSource = urunSepet;
                    Repeater1.DataBind();
                }             
            }
        }

        protected void Buttontumsepetionayla_Click(object sender, EventArgs e)
        {
            int mid = Convert.ToInt32(Session["MUSTERIID"]);
            var tumsepet= (from x in db.TBL_SEPETLER                            
                            where x.MUSTERISID == mid
                            select new
                            {
                                x.Tbl_Urunler.URUNFIYAT
                            }
                            ).Sum(x => x.URUNFIYAT);
            Response.Write(tumsepet);

            var musteri = db.Tbl_Musteriler.Find(mid);
            musteri.MUSTERIBUTCE = musteri.MUSTERIBUTCE - tumsepet;
            db.SaveChanges();
            baglanti.Open();
            SqlCommand kmtSepetSil = new SqlCommand("Delete from TBL_SEPETLER where MUSTERISID="+mid ,baglanti);
            kmtSepetSil.ExecuteNonQuery();         
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}