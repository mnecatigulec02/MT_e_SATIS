//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MT_e_SATIS.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tbl_Adminler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Adminler()
        {
            this.TBL_MESAJLAR = new HashSet<TBL_MESAJLAR>();
            this.Tbl_Duyurular = new HashSet<Tbl_Duyurular>();
        }
    
        public int ADMINID { get; set; }
        public string ADMINADSOYAD { get; set; }
        public string ADMINTELEFON { get; set; }
        public string ADMINMAIL { get; set; }
        public string ADMINCINSIYET { get; set; }
        public string ADMINKULLANICIADI { get; set; }
        public string ADMINSIFRE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_MESAJLAR> TBL_MESAJLAR { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_Duyurular> Tbl_Duyurular { get; set; }
    }
}