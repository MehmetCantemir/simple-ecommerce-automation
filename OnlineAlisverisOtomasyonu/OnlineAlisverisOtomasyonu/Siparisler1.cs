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
    
    public partial class Siparisler1
    {
        public int SiparisID { get; set; }
        public Nullable<int> SiparisDetayID { get; set; }
        public Nullable<int> MusteriID { get; set; }
        public Nullable<int> UrunID { get; set; }
    
        public virtual Musteriler Musteriler { get; set; }
        public virtual Urunler Urunler { get; set; }
    }
}