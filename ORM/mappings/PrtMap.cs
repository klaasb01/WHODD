using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class PrtMap : ClassMap<Prt> {
        
        public PrtMap() {
			Table("PRT");
			LazyLoad();
			Id(x => x.ProdtypeId).GeneratedBy.Assigned().Column("Prodtype_Id");
			Map(x => x.Text).Column("Text");
        }
    }
}
