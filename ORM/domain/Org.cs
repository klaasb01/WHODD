using System;
using System.Text;
using System.Collections.Generic;


namespace bd.whodd.Domain {
    
    public class Org {
        public Org() { }
        public virtual string OrganizationId { get; set; }
        public virtual string Name { get; set; }
        public virtual string Countrycode { get; set; }
    }
}
