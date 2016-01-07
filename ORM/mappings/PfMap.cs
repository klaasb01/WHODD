using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class PfMap : ClassMap<Pf> {
        
        public PfMap() {
			Table("PF");
			LazyLoad();
			Id(x => x.PharmformId).GeneratedBy.Assigned().Column("Pharmform_Id");
			Map(x => x.Text).Column("Text");
        }
    }
}
