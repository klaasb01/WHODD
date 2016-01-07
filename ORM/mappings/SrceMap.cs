using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class SrceMap : ClassMap<Srce> {
        
        public SrceMap() {
			Table("SRCE");
			LazyLoad();
			Id(x => x.Referencecode).GeneratedBy.Assigned().Column("ReferenceCode");
			Map(x => x.Reference).Column("Reference");
			Map(x => x.Countrycode).Column("CountryCode");
        }
    }
}
