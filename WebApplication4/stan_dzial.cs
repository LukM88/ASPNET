//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication4
{
    using System;
    using System.Collections.Generic;
    
    public partial class stan_dzial
    {
        public stan_dzial()
        {
            this.Oferties = new HashSet<Oferty>();
        }
    
        public int idS { get; set; }
        public int idD { get; set; }
    
        public virtual Dzialy Dzialy { get; set; }
        public virtual ICollection<Oferty> Oferties { get; set; }
        public virtual Stanowiska Stanowiska { get; set; }
    }
}
