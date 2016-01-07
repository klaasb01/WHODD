using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Thg {
        public virtual string TherapgroupId { get; set; }
        public virtual Atc Atc { get; set; }
        public virtual Mp Mp { get; set; }
        public virtual DateTime? Createdate { get; set; }
        public virtual string Officialatccode { get; set; }
    }
}
