using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MT_e_SATIS.Entity;

namespace MT_e_SATIS.MUSTERIMODULU
{
    
    public partial class MESAJLAR : System.Web.UI.Page
    {
        DB_e_SATISEntities  db = new DB_e_SATISEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToLocalTime().ToString();

            if (!IsPostBack)
            {
                int musteriID = Convert.ToInt32(Session["MUSTERIID"].ToString());
                var musteriAD = (from x in db.Tbl_Musteriler
                                 where x.MUSTERIID == musteriID
                                 select new
                                 {
                                     MUSTERITAMAD = x.MUSTERIAD + " " + x.MUSTERISOYAD
                                 }
                                 ).SingleOrDefault();
                TextBoxKimden.Text = musteriAD.MUSTERITAMAD;

                var adminler = (from x in db.Tbl_Adminler
                                select new
                                { x.ADMINID, x.ADMINADSOYAD }).ToList();
                DropDownListKime.DataTextField = "ADMINADSOYAD";
                DropDownListKime.DataValueField = "ADMINID";
                DropDownListKime.DataSource = adminler;
                DropDownListKime.DataBind();
            }
        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            TBL_MESAJLAR t = new TBL_MESAJLAR();
            t.GONDEREN = Convert.ToInt32(Session["MUSTERIID"].ToString());
            t.ALAN = int.Parse(DropDownListKime.SelectedValue);
            t.KONU = TextBoxKonu.Text;
            t.MESAJICERIK = TextBoxMesajIcerik.Text;
            db.TBL_MESAJLAR.Add(t);
            db.SaveChanges();
            Response.Write("Mesajınız Gönderildi.");
        }
    }
}