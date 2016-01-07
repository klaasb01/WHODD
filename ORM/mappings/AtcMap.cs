using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class AtcMap : ClassMap<Atc> {
        
        public AtcMap() {
			Table("ATC");
			LazyLoad();
			Id(x => x.Atccode).GeneratedBy.Assigned().Column("ATCCode");
			Map(x => x.Level).Column("Level");
			Map(x => x.Text).Column("Text");
        }
    }
}
