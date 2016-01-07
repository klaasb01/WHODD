using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Pp {
        public Pp() { }
        public virtual string PharmproductId { get; set; }
        public virtual Pf Pf { get; set; }
        public virtual Mp Mp { get; set; }
        public virtual string Routeofadministration { get; set; }
        public virtual string Numberofingredients { get; set; }
        public virtual DateTime? Createdate { get; set; }
    }
}
