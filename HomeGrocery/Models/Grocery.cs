//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HomeGrocery.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Grocery
    {
        public int ID { get; set; }
        public string GroceryName { get; set; }
        public string GroceryType { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string Quantity { get; set; }
        public string Available { get; set; }
    }
}
