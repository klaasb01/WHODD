using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class CcodeMap : ClassMap<Ccode> {
        
        public CcodeMap() {
			Table("CCODE");
			LazyLoad();
			Id(x => x.Countrycode).GeneratedBy.Assigned().Column("CountryCode");
			Map(x => x.Countryname).Column("CountryName");
        }
    }
}
