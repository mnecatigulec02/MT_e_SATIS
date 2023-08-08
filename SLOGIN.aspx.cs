using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Xml;

namespace MT_e_SATIS
{
    public partial class SLOGIN : System.Web.UI.Page
    {
        DB_e_SATISEntities db = new DB_e_SATISEntities();
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-PVEILPL;Initial Catalog=DB_e_SATIS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bugün: " + DateTime.Now.ToLocalTime();

            XmlTextReader xtrOkuyucu = new XmlTextReader("https://www.tcmb.gov.tr/kurlar/today.xml");
            XmlDocument xdDokuman = new XmlDocument();
            xdDokuman.Load(xtrOkuyucu);
            XmlNode xnDolar = xdDokuman.SelectSingleNode("/Tarih_Date/Currency[CurrencyName='US DOLLAR']");
            String strDolar_Alis = xnDolar.ChildNodes[4].InnerText;
            Label2.Text = "USD/TRY=" + strDolar_Alis;


            XmlNode xnEuro = xdDokuman.SelectSingleNode("/Tarih_Date/Currency[CurrencyName='EURO']");
            String strEuro_Satis = xnEuro.ChildNodes[4].InnerText;
            Label3.Text = "EUR/TRY=" + strEuro_Satis;


            XmlNode xnManat = xdDokuman.SelectSingleNode("/Tarih_Date/Currency[CurrencyName='AZERBAIJANI NEW MANAT']");
            String strManat_Satis = xnManat.ChildNodes[4].InnerText;
            Label4.Text = "AZN/TRY=" + strManat_Satis;

            XmlNode xnPound = xdDokuman.SelectSingleNode("/Tarih_Date/Currency[CurrencyName='POUND STERLING']");
            String strPound_Satis = xnPound.ChildNodes[4].InnerText;
            Label5.Text = "GBP/TRY=" + strPound_Satis;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand kmtsaticigirisyap = new SqlCommand("select * from Tbl_Saticilar where SATICIKULLANICIADI=@s1 and SATICISIFRE=@s2", baglanti);
            kmtsaticigirisyap.Parameters.AddWithValue("@s1", txtkullaniciadi.Text);
            kmtsaticigirisyap.Parameters.AddWithValue("@s2", txtsifre.Text);
            SqlDataReader drsaticigirisyap = kmtsaticigirisyap.ExecuteReader();
            if (drsaticigirisyap.Read())
            {
                int id = int.Parse(drsaticigirisyap[0].ToString());
                Session.Add("SATICIID", id);
                Response.Redirect("\\SATICIAYARLAR\\SATICIBILGIGUNCELLE.aspx");
            }
            else
            {
                Labelerror.Visible= true;
                Labelerror.Text = "HATALI KULLANICI ADI VE YA ŞİFRE";
                txtkullaniciadi.Text = "";
                txtsifre.Text = "";
                
            }
            baglanti.Close();
        }
    }
}