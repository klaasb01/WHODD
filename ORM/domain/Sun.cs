using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Sun {
        public Sun() { }
        public virtual string SubstanceId { get; set; }
        public virtual Srce Srce { get; set; }
        public virtual string Casnumber { get; set; }
        public virtual string Languagecode { get; set; }
        public virtual string Substancename { get; set; }
        public virtual string Yearofreference { get; set; }
    }
}
