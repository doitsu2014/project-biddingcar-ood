//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BiddingCar.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bidy
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string IdProduct { get; set; }
        public double Price { get; set; }
        public System.DateTime BidTime { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual Product Product { get; set; }
    }
}
