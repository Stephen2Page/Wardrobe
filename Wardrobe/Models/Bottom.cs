//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Bottom
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bottom()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int BottomID { get; set; }
        public string Name { get; set; }
        public string Photo { get; set; }
        public string Type { get; set; }
        public string Style { get; set; }
        public string Length { get; set; }
        [Display(Name = "Primary Color")]
        public string PrimaryColor { get; set; }
        [Display(Name = "Second Color")]
        public string SecondaryColor { get; set; }
        public string Pattern { get; set; }
        public string Season { get; set; }
        public string Occasion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}
