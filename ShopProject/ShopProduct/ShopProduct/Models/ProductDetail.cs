//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ShopProduct.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProductDetail
    {
        public int proID { get; set; }
        public string proDetails { get; set; }
        public string proPhoto1 { get; set; }
        public string proPhoto2 { get; set; }
        public string proPhoto3 { get; set; }
        public string proPhoto4 { get; set; }
        public string proPhoto5 { get; set; }
        public string proMaxDetails { get; set; }
        public string proDisplay { get; set; }
        public string proOS { get; set; }
        public string proCameraAhead { get; set; }
        public string proCameraBehind { get; set; }
        public string proChip { get; set; }
        public string proRam { get; set; }
        public string proMemory { get; set; }
        public string proSim { get; set; }
        public string proPin { get; set; }
    
        public virtual Product Product { get; set; }
    }
}
