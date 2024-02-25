//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineAlisverisOtomasyonu
{
    using System;
    using System.Collections.Generic;
    
    public partial class Urunler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Urunler()
        {
            this.Siparisler = new HashSet<Siparisler>();
            this.Siparisler1 = new HashSet<Siparisler1>();
        }
    
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public string UrunAciklamasi { get; set; }
        public Nullable<decimal> Fiyat { get; set; }
        public Nullable<int> Stok { get; set; }
        public Nullable<int> KategoriID { get; set; }
        public Nullable<int> RenkID { get; set; }
    
        public virtual Kategori Kategori { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Siparisler> Siparisler { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Siparisler1> Siparisler1 { get; set; }
        public virtual UrunRenkleri UrunRenkleri { get; set; }
    }
}