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
    
    public partial class Cart
    {
        public int cartID { get; set; }
        public Nullable<int> proID { get; set; }
        public Nullable<int> proPrice { get; set; }
        public Nullable<int> CartQuantity { get; set; }
        public Nullable<int> CartMoney { get; set; }
        public Nullable<int> cusID { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Product Product { get; set; }
    }
}