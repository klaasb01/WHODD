using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Mp {
        public Mp() { }
        public virtual string MedicinalprodId { get; set; }
        public virtual Ccode Ccode { get; set; }
        public virtual Org Org { get; set; }
        public virtual Prt Prt { get; set; }
        public virtual Prg Prg { get; set; }
        public virtual string Medid { get; set; }
        public virtual string Drugrecordnumber { get; set; }
        public virtual string Sequencenumber1 { get; set; }
        public virtual string Sequencenumber2 { get; set; }
        public virtual string Sequencenumber3 { get; set; }
        public virtual string Sequencenumber4 { get; set; }
        public virtual string Generic { get; set; }
        public virtual string Drugname { get; set; }
        public virtual string Namespecifier { get; set; }
        public virtual string Marketingauthorizationnumber { get; set; }
        public virtual string Marketingauthorizationdate { get; set; }
        public virtual string Marketingwithdrawaldate { get; set; }
        public virtual string Company { get; set; }
        public virtual string Referencecode { get; set; }
        public virtual string Sourcecountry { get; set; }
        public virtual string Yearofreference { get; set; }
        public virtual DateTime Createdate { get; set; }
        public virtual DateTime Datechanged { get; set; }
    }
}
