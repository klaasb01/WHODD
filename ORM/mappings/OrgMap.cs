using System; 
using System.Collections.Generic; 
using System.Text; 
using FluentNHibernate.Mapping;
using bd.whodd.Domain; 

namespace bd.whodd.Maps {
    
    
    public class OrgMap : ClassMap<Org> {
        
        public OrgMap() {
			Table("ORG");
			LazyLoad();
			Id(x => x.OrganizationId).GeneratedBy.Assigned().Column("Organization_Id");
			Map(x => x.Name).Column("Name");
			Map(x => x.Countrycode).Column("CountryCode").Not.Nullable();
        }
    }
}
