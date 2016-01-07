using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Prg {
        public Prg() { }
        public virtual string ProductgroupId { get; set; }
        public virtual string Productgroupname { get; set; }
        public virtual DateTime? Daterecorded { get; set; }
    }
}
