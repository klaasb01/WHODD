using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Atc {
        public Atc() { }
        public virtual string Atccode { get; set; }
        public virtual string Level { get; set; }
        public virtual string Text { get; set; }
    }
}
