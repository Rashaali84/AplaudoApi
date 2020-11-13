//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AplaudoApi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Concert
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Concert()
        {
            this.Artists = new HashSet<Artist>();
            this.Programmas = new HashSet<Programma>();
        }
    
        public long ConcertId { get; set; }
        public string About { get; set; }
        public Nullable<int> StyleId { get; set; }
        public Nullable<int> GenereId { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string ConcertLink { get; set; }
        public string PictureLink { get; set; }
    
        public virtual Genere Genere { get; set; }
        public virtual Style Style { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Artist> Artists { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Programma> Programmas { get; set; }
    }
}