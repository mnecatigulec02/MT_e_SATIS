using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Printing;

namespace MT_e_SATIS.MUSTERIMODULU
{
    public partial class MUSTERIKATEGORILER : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-PVEILPL;Initial Catalog=DB_e_SATIS;Integrated Security=True");

        public void kategoriSec(int id)
        {
            List<string> kategoriler = new List<string>();
            List<string> kategoriler2 = new List<string>();
            baglanti.Open();
            SqlCommand kmtKategoriGetir = new SqlCommand("select * from Tbl_Kategoriler", baglanti);
            SqlDataReader drKategoriGetir = kmtKategoriGetir.ExecuteReader();
            while (drKategoriGetir.Read())
            {
                kategoriler.Add(drKategoriGetir["KATEGORIAD"].ToString());
                kategoriler2.Add(drKategoriGetir["KATEGORIID"].ToString());              
            }
            baglanti.Close();

            Session.Add("KATEGORIID", kategoriler2[id]);            
        }
        public void butonlaraKategoriIsmiYazdirma()
        {
            List<string> kategoriler7 = new List<string>();
            baglanti.Open();
            SqlCommand kmtKategoriGetir = new SqlCommand("select * from Tbl_Kategoriler", baglanti);
            SqlDataReader drKategoriGetir = kmtKategoriGetir.ExecuteReader();
            while (drKategoriGetir.Read())
            {
                kategoriler7.Add(drKategoriGetir["KATEGORIAD"].ToString());             
            }
            baglanti.Close();            

            for (int i = 1; i < 21; i++)
            {
                Button btn = new Button();
                btn.ID = "Button" + i.ToString();
                string isim = btn.ID;
                btn.Text = kategoriler7[i-1];
                btn.Click += new EventHandler(btn_Click);
                btn.BackColor = Color.SkyBlue;
                btn.Style["margin-left"] = "100px";
                btn.Style["margin-right"] = "30px";
                btn.Style["margin-bottom"] = "50px";
                //btn.CssClass = "button1";
                btn.ForeColor= Color.White;
                btn.BorderColor = Color.White;                
                btn.Width = 200;
                btn.Height = 100;
                //this.Controls.Add(btn); //bu şekilde form'a ekleme yapılırsa tüm butonlar üst üste çıkacaktır
                Form.Controls.Add(btn); //oluşan butonlar üstüste binmez
                
            }
        }

        private void btn_Click(object sender, EventArgs e)
        {                     
            List<string> kategoriler = new List<string>();
            List<string> kategoriler2 = new List<string>();
            baglanti.Open();
            SqlCommand kmtKategoriGetir = new SqlCommand("select * from Tbl_Kategoriler", baglanti);
            SqlDataReader drKategoriGetir = kmtKategoriGetir.ExecuteReader();
            while (drKategoriGetir.Read())
            {
                kategoriler.Add(drKategoriGetir["KATEGORIAD"].ToString());
                kategoriler2.Add(drKategoriGetir["KATEGORIID"].ToString());
            }
            baglanti.Close();
            
            Session.Add("KATEGORIAD", ((Button)sender).Text);
            Response.Redirect("\\MUSTERIMODULU\\KATEGORILENMISURUNLER.aspx");
        }
        //public void pageload()
        //{//List<string> kategoriler7 = new List<string>();
        //    baglanti.Open();
        //    SqlCommand kmtKategoriGetir = new SqlCommand("select * from Tbl_Kategoriler", baglanti);
        //    SqlDataReader drKategoriGetir = kmtKategoriGetir.ExecuteReader();
        //    while (drKategoriGetir.Read())
        //    {
        //        kategoriler7.Add(drKategoriGetir["KATEGORIAD"].ToString());
        //    }
        //    baglanti.Close();
        //    Button1.Text = kategoriler7[0];
        //    Button2.Text = kategoriler7[1];
        //    Button3.Text = kategoriler7[2];
        //    Button4.Text = kategoriler7[3];
        //}
        //private void _btnButonOlustur_Click(object sender, EventArgs e)

        //{

        //    Button btn = new Button(); // butonun oluşturulması

        //    // butonun koordinatları btn.Location = new Point(10, 100);

        //    btn.Height = 40; // butonun yüksekliği

        //    btn.Width = 300; // butonun genişliği

        //    btn.Text = "Yeni Oluşan Buton"; // butonun texti

        //    btn.Click += new EventHandler(btn_Click); // butonun eventi

        //    btn.BackColor = Color.Turquoise; // butonun rengi



        //    Form.Controls.Add((Button)btn); // butonun eklenmesi

        //}
        public void Page_Load(object sender, EventArgs e)
        {            
            butonlaraKategoriIsmiYazdirma();
            int mid = Convert.ToInt32(Session["MUSTERIID"]);


            var musteriAd = (from x in db.Tbl_Musteriler
                             where x.MUSTERIID == mid
                             select new
                             {
                                 MUSTERITAMAD = x.MUSTERIAD + " " + x.MUSTERISOYAD,
                             }
                            ).SingleOrDefault();
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime() + "   " + musteriAd.MUSTERITAMAD;
        }     
    }
}